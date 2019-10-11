#!/usr/bin/python
'''
********************************************
Molgeom 1.1 

Author: Andrea Minoia
Date: 27th March 2009
********************************************
Description:
    This program can calculate distances, angles and torsions between
    atoms of a periodic or non-periodic molecular system, for a single structure
    or along a MD trajectory. Results are stored in files and they can be easily
    plotted using gnuplot gnuplot.
    There are two ways to perform a calculation:
    1)  directly for command line: you can set one measurement only and results
        will be stored in standard files (distcml.dat, anglecml.dat and torscml.dat
        for distance, angle and torsion calculations, respectively). Older files
        will be backuped and not overwritten.
    2)  reading the multiple data from a file. A convenient way to generate this file
        is to select all the bonds, angles and torsions you are interested in using VMD and
        save its state. After use the script get_geomtasks_from_vmd
        to extract some or all the data from the VMD state file.
    Please refer to the documentation for further information.

Requirements:
    Numpy
    
Known issues and limitations for version 1.0:
    1) Data have to be plotted with third part software, e.g., with gnuplot.
      
License:
You are free to use, modify and redistribute molgeom and vmd2molgeom as
far as you keep them free as in beer.
      
As free(as in beer)ware software, molgeom and vmd2molgeom come with
_ABSOLUTE_ _NO_ (as in NOTHING, NADA, NICTHS, NIENTE, RIEN) WARRANTY.
The author is _NOT_ responsible if those software will erase your hard disks,
empty your bank account, stole your car, seduce your wife, shave your
dog or make any kind of mess and damages, including loss of data or worst.

By using molgeom and vmd2molgeom, you _ACCEPT_ these terms.
Once again: use them at your own risk!

The licence and terms of use also apply to molgeom and vmd2molgeom as
stand-alone programsvas well as part of the YASC
(Yet Anothe Script Collection) package.

Contacts:
    You like this program? You have suggestions? Drop me a mail at
    minoiaa_at_gmail.com

Changelog:
    v1.1 - 8th Semptember 2009
    - YASCGUI ready
    
    v1.0 - 27th March 2009
    - first stable version
'''


#import modules
from __future__ import print_function  # to allow print as a function with sep parameter
from sys import argv, exit, version, stderr
from os import system, path
try:
    from optparse import OptionParser as OP
except:
    print("Optparse not installed or not in python path. I give up...")
    exit(10)
try:
    from numpy import array,zeros, sin, cos, sqrt, pi, arccos, modf, linspace, full, sort
except:
    print("Numpy not installed or not in python path. I give up...")
    exit(10)
from string import split, strip, join,lower
from math import exp

# global variables

# init covalent radius data
#covalentR = { "H":0.31, "C":0.76, "N":0.71, "F":0.57, "O":0.66 }
covalentR = { "H":0.38, "C":0.95, "N":0.88, "F":0.71, "O":0.82 }

NBINS=10

'''
#===============================================================================
#                               SUBROUTINES
#===============================================================================
'''
def vecmod(a):
    ''' modulus of a vector
    '''
    mod_a=sqrt(a[0]**2+a[1]**2+a[2]**2)
    return mod_a


def pscalar_cos(a,b):
    ''' scalar product: return the cosine of an angle between the two
    vectors
    '''
    mod_a=vecmod(a)
    mod_b=vecmod(b)
    if mod_a * mod_b <0.0001: return 0
    theta=(a[0]*b[0]+a[1]*b[1]+a[2]*b[2])/(mod_a*mod_b)
    if theta > 1:
        theta=1
    if theta < -1:
        theta=-1
    return theta


def pscalar(a,b):
    ''' scalar product: return the angle between the two
    vectors
    '''
    theta = pscalar_cos(a, b)
    theta=arccos(theta) #in rad
    theta=theta*180/pi #in degrees
    return theta


def pvect(a,b):
    ''' vectorial product between two vectors
    '''
    n=zeros(3)
    n[0]=a[1]*b[2]-a[2]*b[1]
    n[1]=a[2]*b[0]-a[0]*b[2]
    n[2]=a[0]*b[1]-a[1]*b[0]
    return n


def nint(a):
    ''' implementation of anint function: return the nearest integer of a
    float number
    '''
    temp=modf(a)
    if temp[0] >= 0.5:
        approx=temp[1]+1
    else:
        approx=temp[1]
    return approx


def vecxmat(vec, mat):
    '''product vector*matrix (to be done using numpy functions?)
    '''
    outvec=zeros(3)
    for j in range (3):
        for i in range (3):
            outvec[j]=outvec[j]+vec[i]*mat[i][j]
    return outvec


def setpbc(cellp):
#NB: vectors are passed for address, so any change in it is not local,
#and will be also in the rest of the code, even in the main!!!
#Variables behave differently.
    Tmatrix=[None]*2 #array of matrix to return the two matrix of transformation
#set cos and sin
    cosal=cos(cellp[3]*pi/180.0)
    cosbe=cos(cellp[4]*pi/180.0)
    cosga=cos(cellp[5]*pi/180.0)
    sinal=sin(cellp[3]*pi/180.0)
    sinbe=sin(cellp[4]*pi/180.0)
    singa=sin(cellp[5]*pi/180.0)
#compute volume of the cell    
    volangular=sqrt(1.0-cosal**2-cosbe**2-cosga**2+2.0*cosal*cosbe*cosga) #angular correction to cubic case
    volaxis=cellp[0]*cellp[1]*cellp[2] #volume in the cubic case
    volume=volaxis*volangular #volume cell (general)
#define reciprocal vectors a* b* c* and their geometrical relations
    astar=cellp[1]*cellp[2]*sinal/volume
    bstar=cellp[0]*cellp[2]*sinbe/volume
    cstar=cellp[0]*cellp[1]*singa/volume
    c_alstar=(cosbe*cosga-cosal)/(sinbe*singa) #def cos(alpha*)
    c_bestar=(cosal*cosga-cosbe)/(sinal*singa) #def cos(beta*)
    c_gastar=(cosbe*cosal-cosga)/(sinal*sinbe) #def cos(gamma*)
#build transformation matrix A and B 
    A=zeros((3,3)) #init matrix A
    A[0][0]=cellp[0]
    A[1][0]=cellp[1]*cosga
    A[1][1]=cellp[1]*singa
    A[2][0]=cellp[2]*cosbe
    A[2][1]=-cellp[2]*(cosbe*cosga-cosal)/singa
    A[2][2]=cellp[2]*volangular/singa
    B=zeros((3,3)) #init matrix B
    B[0][0]=1/cellp[0]
    B[1][0]=-cosga/(cellp[0]*singa)
    B[1][1]=1/(cellp[1]*singa)
    B[2][0]=astar*c_bestar
    B[2][1]=bstar*c_alstar
    B[2][2]=cstar
    Tmatrix[0]=A
    Tmatrix[1]=B
    return Tmatrix


def getdist(at1,at2):
    ''' Calculate distance between two particles
    '''
    dist_at=sqrt((at2[0]-at1[0])**2+(at2[1]-at1[1])**2+(at2[2]-at1[2])**2)
    return dist_at


def getangle(at1,at2,at3):
    ''' Calculate angle between three particles
    '''
    vij=at1-at2
    vkj=at3-at2 #be careful to the order of atoms
    theta=pscalar(vij,vkj)
    return theta


def gettors(at1,at2,at3,at4):
    ''' Calculate dihedral involving four particles
    '''
    vij=at1-at2
    vkj=at3-at2
    vlj=at4-at3
    v1=pvect(vkj,vij)
    v2=pvect(vkj,vlj)
    theta=pscalar(v1,v2)
    #checking the sign
    sign=vlj[0]*v1[0]+vlj[1]*v1[1]+vlj[2]*v1[2]
    if sign < 0:
        sign=-1
    else:
        sign=1
    theta=theta*sign
    return theta


def getdih(at1,at2,at3,at4,period):
    ''' Routine getdih:
            calculates dihedral angle between four particles. Returns angle.
        Input type:
            at1: array x- y- z-coordinates particle 1; length 3
            at2: array x- y- z-coordinates particle 2; length 3
            at3: array x- y- z-coordinates particle 3; length 3
            at4: array x- y- z-coordinates particle 4; length 3
            period: integer (define periodicity dihedral, default 360 deg)
        Output type:
            theta: float number
    '''
    vij=at1-at2
    vkj=at3-at2
    vlj=at4-at3
    v1=pvect(vkj,vij)
    v2=pvect(vkj,vlj)
    theta=pscalar(v1,v2) # 0<=theta<=180
    
    #fold theta for the periodicity
    sign=vlj[0]*v1[0]+vlj[1]*v1[1]+vlj[2]*v1[2]
    if sign < 0:
        sign=-1
        theta=theta*sign+360 #0<=theta<=360
    nfold=modf(theta/period)[1] #number of folding steps
    if modf(nfold/2)[0] == 0:
        theta=theta-nfold*period  #even periods
    else:
        theta=2*pi-(theta-(nfold-1)*period)  #odd periods
    return theta


def getpbcdist(at1,at2,cellparam):
    matrix=setpbc(cellparam)
    mat_a=matrix[0]
    mat_b=matrix[1]
    vdiff=array(at2)-array(at1)
    tvec=vecxmat(vdiff,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vecdiff=vecxmat(tvec,mat_a)
    dist_at=vecmod(vecdiff)
    return dist_at


def getpbcangle(at1,at2,at3,cellparam):
    matrix=setpbc(cellparam)
    mat_a=matrix[0]
    mat_b=matrix[1]
    vij=at1-at2
    tvec=vecxmat(vij,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vij=vecxmat(tvec, mat_a)
    vkj=at3-at2 #be careful to the order of atoms
    tvec=vecxmat(vkj,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vkj=vecxmat(tvec,mat_a)
    theta=pscalar(vij,vkj)
    return theta


def getpbctors(at1,at2,at3,at4,period,cellparam):
    matrix=setpbc(cellparam)
    mat_a=matrix[0]
    mat_b=matrix[1]
    vij=at1-at2
    tvec=vecxmat(vij,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vij=vecxmat(tvec, mat_a)
    vkj=at3-at2
    tvec=vecxmat(vkj,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vkj=vecxmat(tvec,mat_a)
    vlj=at4-at3
    tvec=vecxmat(vlj,mat_b)
    tvec[0]=tvec[0]-nint(tvec[0])
    tvec[1]=tvec[1]-nint(tvec[1])
    tvec[2]=tvec[2]-nint(tvec[2])
    vlj=vecxmat(tvec,mat_a)
    v1=pvect(vkj,vij)
    v2=pvect(vkj,vlj)
    theta=pscalar(v1,v2)
    #checking the sign
    sign=vlj[0]*v1[0]+vlj[1]*v1[1]+vlj[2]*v1[2]
    if sign < 0:
        sign=-1
        theta=theta*sign+360 #0<=theta<=360
    nfold=modf(theta/period)[1] #number of folding steps
    if modf(nfold/2)[0] == 0:
        theta=theta-nfold*period  #even periods
    else:
        theta=2*pi-(theta-(nfold-1)*period)  #odd periods
    return theta


def read_arc(file,offset=None):
    '''
    parse data from tinker file or tinker arc trajectory. Only coordinates are updated each frame.
    All the other lists are the same for each frame in the trajectory, therefore they store
    info from the first frame only. The trajectory is read one frame at a time by
    passing the offset.
    '''
    if offset != None:
        file.seek(offset)
    line=file.readline() #read fist line: number of atoms and optional comment
    if len(line)==0: #reached end of file: stop
        return "EOF"
    junk=split(line[:-1])
    at_number=int(junk[0])
    coordinates=zeros((at_number,3))
    if offset == None:
        at_symbols=[]
        at_types=zeros(at_number)
        at_connectivity=zeros((at_number,5))
    
    linecount=0
    while linecount<at_number:
        line=file.readline()
        junk=split(line[:-1])
        coordinates[linecount,0]=junk[2] #get X-coords
        coordinates[linecount,1]=junk[3] #get Y-coords
        coordinates[linecount,2]=junk[4] #get Z-coords
        if offset == None:
            at_symbols.append(junk[1])  #get atomic symbol
            at_types[linecount]=junk[5]    #get atom type
            for i in range(6,len(junk)):
                at_connectivity[linecount,i-6]=junk[i]  #get connectivity
        linecount+=1
    newoffset=file.tell()
    if offset==None:
        return coordinates, newoffset, at_symbols, at_types, at_connectivity
    else:
        return coordinates, newoffset


def read_xyz(file,offset=None):
    '''
    parse data from xyz file or xmol trajectory
    The trajectory is read one frame at a time by
    passing the offset.
    '''
    if offset != None:
        file.seek(offset)
    line=file.readline() #read fist line: number of atoms and optional comment
    if len(line)==0: #reached end of file: stop
        return "EOF"
    junk=split(line[:-1])
    at_number=int(junk[0])
    coordinates=zeros((at_number,4))
    if offset == None:
        at_symbols=[]
    file.readline() #!skip line    
    linecount=0
    while linecount<at_number:
        line=file.readline()
        junk=split(line[:-1])
        coordinates[linecount,0]=junk[1] #get X-coords
        coordinates[linecount,1]=junk[2] #get Y-coords
        coordinates[linecount,2]=junk[3] #get Z-coords
        coordinates[linecount,3] = junk[4]  # get Mulliken charge
        if offset == None:
            at_symbols.append(junk[0])  #get atomic symbol
        linecount+=1
    newoffset=file.tell()
    if offset==None:
        return coordinates, newoffset, at_symbols
    else:
        return coordinates, newoffset


def read_moments(file):
    '''
    parse data from moments file
    '''
    myDict = {}

    line=file.readline() #read fist line
    while len(line)>0:
        junk=line[:-1].split(",")  # remove trailing \n and split by ,
        if len(junk)==6:
            myDict[junk[0]] = [int(junk[2]),int(junk[3]),junk[4],float(junk[5])]
        else:
            myDict[junk[0]] = [int(junk[2]),int(junk[3]),junk[4],"X"]
        
        line=file.readline()
    return myDict
    

def safeopen(infile,mode):
    '''Open safetely a file
    '''
    try:
        file=open(infile,mode)
    except IOError:
        file=None
    return file


def filecheck(file):
    ''' Check if infile exists
    '''
    if path.isfile(file) == 0:
        found=False
    else:
        found=True
    return found


def backup_file(file):
    '''check if file exists. if not open file
    for writing, otherwhise backup the old one in
    #infile_x# with x progressive number
    '''
    tmpvar=file
    count=0
    while 1:
        found=filecheck(file)
        if found:
            count+=1
            file=tmpvar+'_bak-'+str(count)
        else:
            break
    if file !=tmpvar:
        system('mv '+tmpvar+' '+file)


def parsecmd():
    description="Calculate distances, angles, torsions and quota in periodic or\
 non-periodic molecular structures.\n\
See documentation for further information."
    usage="usage: %prog [options] input_file"
    #updtate this when new formats are added
    
    list_of_formats="XYZ/XMOL, TINKER XYZ/ARC"
    #parse command line
    parser=OP(version='%prog 1.1',description=description,usage=usage)

    parser.add_option('-c','--credits',dest='credits',action='store_true',
                     default=False,help='display credits')
    parser.add_option('-f','--format',dest='fformat', default="arc",
                      help='specify the format of the input structure, [default: %default]')
    parser.add_option('-e','--filedata',dest='filedata',nargs=1,
                      help='specify that input file is setup file')
    parser.add_option('-d','--distance',dest='distance',nargs=2,type='int',
                     help='require a distance calculation on the specified couple of atoms')
    parser.add_option('-a','--angle',dest='angle',nargs=3,type='int',
                     help='require angle calculation on the specified three atoms')
    parser.add_option('-t','--torsion',dest='torsion',nargs=5,type='int',
                     help='require torsions calculation on the specified four atoms and periodicity (i.e. 360 deg)')
    parser.add_option('-u','--unitcell',dest='periodicity',nargs=6,type='float',
                     help='define periodic unit cell (a,b,c in angstrom; alpha,beta,gamma in degrees)')
    parser.add_option('-l','--listformats',dest='listformats',action='store_true',
                     default=False, help='list the available formats')
    (options, args) = parser.parse_args(argv[1:])
    
    #manage parse errors
    if options.credits: #display credits and quit
       credits="\n**********************************\n\
    Andrea Minoia\n\
    Contacts: minoiaa_at_gmail.com\n\
\n*********************************\n"
       print(credits)
       exit()
       
    if len(args)==0 and not options.listformats:   #arguments missing
        parser.exit(parser.print_help())
    
    if len(args)>1: #check if more than one argument (NOT OPTION) has been parsed
        parser.error('You have given me more than one argument '+str(args)+'... dunno what to do...\n')
    
    if options.listformats:
        print("\nList of available formats: "+list_of_formats+"\n")
        exit(0)
    
    else:
       pass
    return options,args


def read_filedata(file):
    ''' get data from file generated by get_geomtasks_from_vmd
    '''
    dists=[]
    angs=[]
    tors=[]
    outfiles=[]
    tasklist=[]
    while 1:
        junk=[]    
        line=file.readline()
        if len(line)==0:
            break
        if split(line)[0] == "#":
            pass
        else:
            line=split(line[:-1])
            if len(line)==2: #two atoms have been found
                junk.append(int(line[0]))
                junk.append(int(line[1]))
                dists.append(junk)
            elif len(line)==3: #three atoms have been found
                junk.append(int(line[0]))
                junk.append(int(line[1]))
                junk.append(int(line[2]))
                angs.append(junk)
            elif len(line)==4 or len(line)==5: #four atoms have been found
                junk.append(int(line[0]))
                junk.append(int(line[1]))
                junk.append(int(line[2]))
                junk.append(int(line[3]))
                if len(line) == 5: #periodicity
                    junk.append(int(line[4]))
                else:
                    junk.append(360)
                tors.append(junk)
            else:
                print("\nUnusual line read... I quit.")
                file.close()
                exit(10)
    if len(dists)==0:
        tasklist.append(None)
        outfiles.append(None)
    else:
        outfiles.append('dists.dat')
        tasklist.append(dists)            

    if len(angs)==0:
        outfiles.append(None)
        tasklist.append(None)
    else:
        tasklist.append(angs)            
        outfiles.append('angs.dat')

    if len(tors)==0:
        outfiles.append(None)
        tasklist.append(None)
    else:
        tasklist.append(tors)
        outfiles.append('tors.dat')
    return tasklist,outfiles


def GetIdentity(symbol, symbol2 = None):
    counts =  { "H":0, "C":0, "N":0, "F":0, "O":0 }
    counts[symbol] += 1
    if symbol2 != None:
        counts[symbol2] += 1
    print(counts["H"], counts["C"], counts["N"], counts["F"], counts["O"], end=",", sep=",")
    return counts


def GetNeighborsCount(atom,at_symbols, neighbors, ignore = None):
    counts =  { "H":0, "C":0, "N":0, "F":0, "O":0, "all":0 } 
    for i in neighbors[atom]:
        if i not in ignore:
            symbol = at_symbols[i]
            counts[symbol]+=1
            if not symbol == "H":
                counts["all"]+=1

    #print("AAA", atom, end=",")
    for f in counts:
        print(counts[f], end=",")
    #print("")


def SmoothGaussian(r1, r2, beta=100/40*NBINS):
    #return 1*(abs(r1-r2)<0.01)
    x = beta * (r1-r2)
    #print beta,x
    return exp(-x**2)


def Rc(r, cutoff=11.3):
    val = 0
    if r < cutoff:
        val = 0.5 * (cos(pi*r/cutoff) + 1)
    return val


def IsCyclic(atom, Afrom, start, visited, neighbors, at_symbols):
    #print("searching for",start," in ",atom)
    if not (atom == start):
        visited[atom] = 1
    for i in neighbors[atom]:
        if (not at_symbols[i] == "H") and (not i in visited) and (not Afrom == i):
            if i==start:
                return True
            if IsCyclic(i, atom, start, visited, neighbors, at_symbols):
                return True

    return False

# find bond distance between atoms
def FindDistance(currentD, currentA, returnVal, neighbors):
    returnVal[currentA] = currentD
    for i in neighbors[currentA]:
        if (returnVal[i]> currentD+1):
            returnVal = FindDistance(currentD+1, i, returnVal, neighbors)
    return returnVal


def GetBondTorsion(i,j,k,distances, neighborsOfk, coordinates):
    for l in neighborsOfk:
        if distances[l]==distances[k]-1:
            return pscalar_cos(coordinates[j]-coordinates[i],coordinates[k]-coordinates[l])
            #return abs(gettors(coordinates[i], coordinates[j], coordinates[k], coordinates[l]))
    print("Error, atom L not found!", file=stderr)

# also includes G1 descriptors...
def GetG2descriptorB(atom, ref_atom, at_symbols, coordinates, neighbors):
    Nbins = 9
    Range = linspace(1, 5.5, Nbins)
    Range2 = linspace(-5,5, Nbins)
    #print(Range);
    element = {"H": 0, "C": 1, "N": 2, "F": 3, "O": 4, "all": 5}
    #rev_element = {0: "H", 1: "C", 2: "N", 3: "F", 4: "O", 5: "all"}

    N = 6
    counts = [[0] * Nbins for i in range(N)]
    counts1 = [[0] * Nbins for i in range(N)]
    counts2 = [[0] * Nbins for i in range(N)]

    countsG1 = zeros(N)
    countsG1b = zeros(N)
    countsG1c = zeros(N)

    charge = zeros((N,2))
    closestAtom = full((N,2), 1000)
    distA = full((N,2), 1000.0)
    distB = full((N,2), 1000.0)
    distC = full((N,2), 1000.0)
    distD = full((N,2),1000.0)
    torsion = full((N,2),1000.0)
    angle = full((N,2), 1000.0)

    distances = full(len(coordinates), 1000)
    distances = FindDistance(0, atom, distances, neighbors)
    #exit(1)


    # get 1st and 2nd level neighbors
    neighbors2 = dict()
    for i in neighbors[atom]:
        neighbors2[i]=1
        for j in neighbors[i]:
            neighbors2[j]=1

    AB = coordinates[atom] - coordinates[ref_atom]

    #for all atoms in the molecule
    for i in range(len(coordinates)):
        # exclude self, 1st and 2nd order neighbors ... this actually might not be a good idea
        if not (i in neighbors2 or i==atom):
        # exclude self and the reference atom
        #if not (i==atom or j==ref_atom):
            symbol = at_symbols[i]
            tt = element[symbol]
            DD = coordinates[atom] - coordinates[i]
            cosA = pscalar_cos(AB,DD)
            dd = getdist(coordinates[atom], coordinates[i])
            dd1 = dd*cosA
            dd2 = dd* sqrt(1 - cosA**2)

            if distA[tt][0] > dd:
                distA[tt][1] = distA[tt][0]
                closestAtom[tt][1] = closestAtom[tt][0]

                distA[tt][0] = dd
                closestAtom[tt][0] =i
            elif distA[tt][1] > dd:
                distA[tt][1] = dd
                closestAtom[tt][1] = i

            if not symbol == "H":
                if distA[5][0] > dd:
                    distA[5][1] = distA[5][0]
                    closestAtom[5][1] = closestAtom[5][0]

                    distA[5][0] = dd
                    closestAtom[5][0]=i
                elif distA[5][1] > dd:
                    distA[5][1] = dd
                    closestAtom[5][1] = i

            rr = Rc(dd, 5.0)
            countsG1[tt] += rr
            if not symbol == "H": countsG1[5] += rr
            if dd1>0:
                countsG1b[tt] += rr
                if not symbol == "H": countsG1b[5] += rr
            else:
                countsG1c[tt] += rr
                if not symbol == "H": countsG1c[5] += rr


            for n in range(Nbins):
                val = SmoothGaussian(dd, Range[n], beta=1.7) * Rc(dd, 6.0)
                counts[tt][n] += val
                if not symbol == "H": counts[5][n] += val

                val = SmoothGaussian(dd1, Range2[n], beta=1.4) * Rc(abs(dd1), 6.0)
                counts1[tt][n] += val
                if not symbol == "H": counts1[5][n] += val

                val = SmoothGaussian(dd2, Range[n], beta=1.7) * Rc(dd2, 6.0)
                counts2[tt][n] += val
                if not symbol == "H": counts2[5][n] += val

    # assign properties of closestAtom for each type:
    for tt in range(N):
        for index in range(2):
            if not closestAtom[tt][index] == 1000:
                i = closestAtom[tt][index]
                DD = coordinates[atom] - coordinates[i]
                cosA = pscalar_cos(AB, DD)
                dd = distA[tt][index]  # distance is already stored from previous loop
                dd1 = dd * cosA
                dd2 = dd * sqrt(1 - cosA ** 2)

                distB[tt][index] = dd1
                distC[tt][index] = dd2
                distD[tt][index] = distances[i]
                charge[tt][index] = coordinates[i][3]
                torsion[tt][index] = GetBondTorsion(ref_atom, atom, i, distances, neighbors[i], coordinates)
                angle[tt][index] = getangle(coordinates[ref_atom], coordinates[atom], coordinates[i])


    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
            print("%.2f" % counts1[f][n], end=",")
            print("%.2f" % counts2[f][n], end=",")
        print(countsG1[f], countsG1b[f], countsG1c[f], sep=",", end=",")
        #print("")
        if not closestAtom[f][0]== 1000:
            print(distA[f][0],distB[f][0],distC[f][0], distD[f][0],charge[f][0], sep=",", end=",")
            #if (at_symbols[atom]=="H"): print(torsion[f][0], angle[f][0], sep=",", end=",")  # this worsens performance!
        else:
            print("0,0,0,0,0", sep=",", end=",")
            #if (at_symbols[atom] == "H"): print("0,0", sep=",", end=",")
        #print("")
        ''''
        if not closestAtom[f][1] == 1000:
            print(distA[f][1], distB[f][1], distC[f][1], distD[f][1], charge[f][1], sep=",", end=",")
            if (at_symbols[atom] == "H"): print(torsion[f][1], angle[f][1], sep=",", end=",")
        else:
            print("NA,NA,NA,NA,NA", sep=",", end=",")
            if (at_symbols[atom] == "H"): print("NA,NA", sep=",", end=",")
        #print("")
        if not (closestAtom[f][0]==1000 or closestAtom[f][1]==1000):
            print(distA[f][1]-distA[f][0], distB[f][1]-distB[f][0], distC[f][1]-distC[f][0], distD[f][1]-distD[f][0], charge[f][1]-charge[f][0], sep=",", end=",")
            if (at_symbols[atom] == "H"): print(torsion[f][1]-torsion[f][0], angle[f][1]-angle[f][0], sep=",", end=",")
        else:
            print("NA,NA,NA,NA,NA", sep=",", end=",")
            if (at_symbols[atom] == "H"): print("NA,NA", sep=",", end=",")
        #print("")
        '''

# THIS vesrion is not being used
def GetG2descriptor(atom, at_symbols, coordinates, neighbors):
    Nbins = 9
    Range = linspace(2, 10, Nbins)
    #print(Range);
    element = {"H": 0, "C": 1, "N": 2, "F": 3, "O": 4, "all": 5}
    #rev_element = {0: "H", 1: "C", 2: "N", 3: "F", 4: "O", 5: "all"}

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    for i in range(len(coordinates)):
        if not (i in neighbors[atom] or i==atom):
            dd = getdist(coordinates[atom], coordinates[i])
            #print(atom, i , dd)
            for n in range(Nbins):
                val = SmoothGaussian(dd, Range[n], beta=1.7) * Rc(dd)
                symbol = at_symbols[i]
                counts[element[symbol]][n] += val
                if not symbol=="H": counts[5][n] += val

    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def Get2ndLevelDistances(atom,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(1.4, 3.4, Nbins)
    # print Range
    element = {"H": 0, "C": 1, "N": 2, "F": 3, "O": 4, "all": 5}
    rev_element = {0: "H", 1: "C", 2: "N", 3: "F", 4: "O", 5: "all"}

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    mm = 100
    MM = -100
    meanM = 0
    nn = 0

    for i in neighbors[atom]:
        for j in neighbors[i]:
            if not atom == j:
                symbol = at_symbols[j]
                dd = getdist(coordinates[atom], coordinates[j])
                mm = min(mm, dd)
                MM = max(MM, dd)
                nn += 1
                meanM += dd
                for n in range(Nbins):
                    val = SmoothGaussian(dd, Range[n],  beta = 2.5 * NBINS * (0.7/2.0) )
                    counts[element[symbol]][n] += val
                    if not symbol == "H":  counts[5][n] += val

    #if nn > 0:
    #    meanM /= nn

    for f in range(N):
        # print("CCC", atom, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        # print("")
    #print(mm, MM, meanM, sep=",", end=",")


def GetNeighborsCharges(atom, exclude, at_symbols, coordinates, neighbors):
    Nbins = 15
    Range = linspace(-.75, .75, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    mm = 100
    MM = -100
    meanM = 0
    nn = 0

    for i in neighbors[atom]:
        if i not in exclude:
            symbol = at_symbols[i]
            for n in range(Nbins):
                val = SmoothGaussian(coordinates[i][3],Range[n], beta= 17.5)
                counts[element[symbol]][n] += val
                if not symbol == "H": counts[5][n] += val

    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")


def Get2ndLevelNeighborsCharges(atom, at_symbols, coordinates, neighbors):
    Nbins = 15
    Range = linspace(-.75, .75, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    mm = 100
    MM = -100
    meanM = 0
    nn = 0

    for i in neighbors[atom]:
        for j in neighbors[i]:
            if not j==atom:
                symbol = at_symbols[j]
                for n in range(Nbins):
                    val = SmoothGaussian(coordinates[j][3],Range[n], beta= 17.5)
                    counts[element[symbol]][n] += val
                    if not symbol == "H": counts[5][n] += val

    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")


def GetChargeArrayOfCloseAtoms3(atom, at_symbols, coordinates, neighbors):
    Nbins = 15
    Range = linspace(-.75, .75, Nbins)
    # print Range
    element = {"H": 0, "C": 1, "N": 2, "F": 3, "O": 4, "all": 5}
    rev_element = {0: "H", 1: "C", 2: "N", 3: "F", 4: "O", 5: "all"}

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    # get 1st and 2nd level neighbors
    neighbors2 = dict()
    for i in neighbors[atom]:
        neighbors2[i] = 1
        for j in neighbors[i]:
            neighbors2[j] = 1

    # for all atoms in the molecule
    for i in range(len(coordinates)):
        # exclude self, 1st and 2nd order neighbors ... this actually might not be a good idea
        if not (i in neighbors2 or i == atom):
            dd = getdist(coordinates[atom], coordinates[i])
            if dd < 3.0:
                symbol = at_symbols[i]
                for n in range(Nbins):
                    val = SmoothGaussian(coordinates[i][3],Range[n], beta= 17.5)
                    counts[element[symbol]][n] += val
                    if not symbol == "H": counts[5][n] += val

    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")


def GetChargeArrayOfCloseAtoms5(atom, at_symbols, coordinates, neighbors):
    Nbins = 15
    Range = linspace(-.75, .75, Nbins)
    # print Range
    element = {"H": 0, "C": 1, "N": 2, "F": 3, "O": 4, "all": 5}
    rev_element = {0: "H", 1: "C", 2: "N", 3: "F", 4: "O", 5: "all"}

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    # get 1st and 2nd level neighbors
    neighbors2 = dict()
    for i in neighbors[atom]:
        neighbors2[i] = 1
        for j in neighbors[i]:
            neighbors2[j] = 1

    # for all atoms in the molecule
    for i in range(len(coordinates)):
        # exclude self, 1st and 2nd order neighbors ... this actually might not be a good idea
        if not (i in neighbors2 or i == atom):
            dd = getdist(coordinates[atom], coordinates[i])
            if dd < 5.0:
                symbol = at_symbols[i]
                for n in range(Nbins):
                    val = SmoothGaussian(coordinates[i][3], Range[n], beta=17.5)
                    counts[element[symbol]][n] += val
                    if not symbol == "H": counts[5][n] += val

    for f in range(N):
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")


def GetNeighborsDistances(atom, exclude, at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(0.9, 1.6, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }
    
    N = 6
    counts = [[0] * Nbins for i in range(N)]

    mm = 100
    MM = -100
    meanM = 0
    nn = 0

    for i in neighbors[atom]:
        if i not in exclude:
            dd = getdist(coordinates[atom],coordinates[i])
            mm = min(mm, dd)
            MM = max(MM, dd)
            nn += 1
            meanM += dd
            symbol = at_symbols[i]
            for n in range(Nbins):
                val = SmoothGaussian(dd,Range[n])
                counts[element[symbol]][n] += val
                if not symbol == "H": counts[5][n] += val

    if nn>0:
        meanM /= nn

    for f in range(N):
        #print("CCC", atom, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")
    # print(mm,MM, meanM, sep=",", end=",")   this did not help for 1JNH


def GetNeighborsAngles(atom1,atom2,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(40, 180, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }
    
    N = 6
    counts = [[0] * Nbins for i in range(N)]
    
    for i in neighbors[atom2]:
        if i!=atom1:
            symbol = at_symbols[i]
            dd = getangle(coordinates[atom1],coordinates[atom2],coordinates[i])
            for n in range(Nbins):
                val = SmoothGaussian(dd,Range[n], beta=0.5 * NBINS/40)
                counts[element[symbol]][n] += val
                if not symbol == "H": counts[5][n] += val

    for f in range(N):
        #print("DDD", atom1, atom2, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def GetNeighborsMaxAngles(atom1,atom2,atomX,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(40, 180, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }
    
    N = 6
    counts = [[0] * Nbins for i in range(N)]
    
    for i in neighbors[atomX]:
        if i!=atom1 and i!=atom2:
            dd1 = getangle(coordinates[atom1],coordinates[atomX],coordinates[i])
            dd2 = getangle(coordinates[atom2],coordinates[atomX],coordinates[i])
            dd = max(dd1, dd2)
            symbol = at_symbols[i]
            for n in range(Nbins):
                val = SmoothGaussian(dd,Range[n], beta=0.5 * NBINS/40)
                counts[element[symbol]][n] += val
                if not symbol == "H": counts[5][n] += val

    for f in range(N):
        #print("DDD", atom1, atom2, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def GetNeighborsMinAngles(atom1,atom2,atomX,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(40, 180, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }

    N = 6
    counts = [[0] * Nbins for i in range(N)]

    for i in neighbors[atomX]:
        if i!=atom1 and i!=atom2:
            dd1 = getangle(coordinates[atom1],coordinates[atomX],coordinates[i])
            dd2 = getangle(coordinates[atom2],coordinates[atomX],coordinates[i])
            dd = min(dd1, dd2)
            symbol = at_symbols[i]
            for n in range(Nbins):
                val = SmoothGaussian(dd,Range[n], beta=0.5*NBINS/40)
                counts[element[symbol]][n] += val
                if symbol ==  "H": counts[5][n] += val

    for f in range(N):
        #print("DDD", atom1, atom2, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def GetNeighborsTorsions(atom1,atom2,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(0, 180, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }
    
    N = 6
    counts = [[0] * Nbins for i in range(N)]
    
    for i in neighbors[atom2]:
        if i!=atom1:
            for j in neighbors[i]:
                if j!=atom2:
                    symbol = at_symbols[j]
                    dd = abs(gettors(coordinates[atom1],coordinates[atom2],coordinates[i],coordinates[j]))
                    #print atom1, atom2, i, j, dd
                    for n in range(Nbins):
                        val = SmoothGaussian(dd,Range[n], beta=0.35 * NBINS/40)
                        counts[element[symbol]][n] += val
                        if not symbol == "H": counts[5][n] += val

    for f in range(N):
        #print("EEE", atom1, atom2, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def GetNeighborsTorsions2(atom1,atom2,atom3,at_symbols, coordinates, neighbors):
    Nbins = NBINS
    Range = linspace(0, 180, Nbins)
    #print Range
    element =  { "H":0, "C":1, "N":2, "F":3, "O":4, "all":5 }
    rev_element =  { 0:"H", 1:"C", 2:"N", 3:"F", 4:"O", 5:"all" }
    
    N = 6
    counts = [[0] * Nbins for i in range(N)]
    
    for i in neighbors[atom3]:
        if i!=atom2:
            symbol = at_symbols[i]
            dd = abs(gettors(coordinates[atom1],coordinates[atom2],coordinates[atom3],coordinates[i]))
            #print atom1, atom2, i, j, dd
            for n in range(Nbins):
                val = SmoothGaussian(dd,Range[n], beta=0.35 * NBINS/40)
                counts[element[symbol]][n] += val
                if not symbol=="H":
                    counts[5][n] += val

    for f in range(N):
        #print("FFF", atom1, atom2, atom3, rev_element[f], end=",")
        for n in range(Nbins):
            print("%.2f" % counts[f][n], end=",")
        #print("")


def Get2ndLevelNeighborsCount(atom,at_symbols, neighbors):
    counts =  { "H":0, "C":0, "N":0, "F":0, "O":0, "all":0 }
    for i in neighbors[atom]:
        for j in neighbors[i]:
            if j!=atom:
                symbol = at_symbols[j]
                counts[symbol]+=1
                if not symbol == "H": counts["all"]+=1

    #print("BBB", atom,end=",")
    for f in counts:
        print(counts[f], end=",")
    #print("")


def GetMinMaxMeanNeighborsCharges(atom, exclude, coordinates, neighbors):
    # get min/max,mean charge of atom neighbors (exclude atoms excluding)
    mm = 100
    MM = -100
    mmm = 0
    nnn = 0
    for k in neighbors[atom]:
        if k not in exclude:
            mm = min(mm, coordinates[k][3])
            MM = max(MM, coordinates[k][3])
            mmm = mmm + coordinates[k][3]
            nnn = nnn + 1

    if nnn>0:
        mmm /= nnn

    print(mm, MM, mmm, sep=",", end=",")  # min, max and average charge of neighbors of atom


def CountCyclicNeighbors(atom, neighbors, cyclicAtoms):
    countCyclicNeighbors = 0
    for x in neighbors[atom]:
        if x in cyclicAtoms:
            countCyclicNeighbors += 1
    return countCyclicNeighbors


def IsAtomCyclic(atom, cyclicAtoms):
    isAtomCyclic = 0
    if atom in cyclicAtoms:
        isAtomCyclic = 1
    return isAtomCyclic


def GetCoulombMatrixRow(atom, coordinates, neighbors):
    result = zeros(29)

    for i in range(len(coordinates)):
        if not (atom==i): # or i in neighbors[atom]):
            result[i] = coordinates[atom][3]*coordinates[i][3]/getdist(coordinates[i],coordinates[atom])
    #print("A")
    result = sort(result)

    for i in range(29):
        print(result[i], sep=",", end=",")
    #print("B")

def run(infile,tasklist,fformat,outfiles,pbc=None):

    structfile=safeopen(infile,'r')
    trainFile=safeopen(infile+".train",'r')
    if structfile == None: #if file not found, print error and quit
        print("\nWhooooaaaa! Cannot file "+infile+"... I'm out of here\n")
        exit(10)
    if trainFile == None: #if file not found, print error and quit
        print("\nWhooooaaaa! Cannot file "+infile+".train ... I'm out of here\n")
        exit(10)
    offset=None
    at1=array([0,0,0],float)
    at2=array([0,0,0],float)
    at3=array([0,0,0],float)
    at4=array([0,0,0],float)
    F_DISTS=None
    F_ANGS=None
    F_TORS=None

    #main loop
    while 1:
        #get format file structure
        if lower(fformat) == "arc":
            retdata=read_arc(structfile,offset)
        elif lower(fformat) == "xyz":
            retdata=read_xyz(structfile,offset)
            moments=read_moments(trainFile)
        else:
            pass
                
        if retdata=="EOF":
            break
        else:
            coordinates=retdata[0]  #always in 1st position if not EOF
            offset=retdata[1]       #always in 2nd position if not EOF
            at_symbols=retdata[2]

        neighbors = [dict() for x in range(len(coordinates))]

        # get all bonds
        for i in range(len(coordinates)-1):
            for j in range(i+1,len(coordinates)):
                dd = getdist(coordinates[i],coordinates[j])
                if dd < covalentR[at_symbols[i]]+covalentR[at_symbols[j]]:
                        neighbors[i][j] = dd
                        neighbors[j][i] = dd

        #check cyclic
        cyclic = dict()
        for i in range(len(coordinates)):
            if not at_symbols[i] == "H":
                val = IsCyclic(i,i,i,dict(),neighbors,at_symbols)
                if val:
                    cyclic[i]=1

        '''
        # Print all neighbors
        for i in range(len(coordinates)):
            for j in neighbors[i]:
                print("BOND",i,j, at_symbols[i],at_symbols[j], len(neighbors[i])-1,len(neighbors[j])-1,neighbors[i][j])
                #for k in neighbors[i]:
                #    if k!=j:
                #        print

        # Print angles:
        for i in range(len(coordinates)):
            for j in neighbors[i]:
                for k in neighbors[i]:
                    if j!=k: print("ANGLE",j,i,k, at_symbols[j],at_symbols[i],at_symbols[k], getangle(coordinates[j],coordinates[i],coordinates[k]))
        
        #Print dihedrals
        for i in range(len(coordinates)):
            for j in neighbors[i]:
                if i<j:  # get dihedrals for i-j bond
                    for k in neighbors[i]:
                        if k!=j:
                            for l in neighbors[j]:
                                if l!=i:
                                    print("TORS",k,i,j,l, at_symbols[k],at_symbols[i],at_symbols[j],at_symbols[l],gettors(coordinates[k],coordinates[i],coordinates[j],coordinates[l]))
        '''

        # start building features
        for m in sorted(moments):
            # 1JHC and 1JHN features
            if moments[m][2]=="1JHC" or moments[m][2]=="1JHN":
                i=moments[m][0]  #H
                j=moments[m][1]
                #print("III",m,moments[m])
                print(m,moments[m][0],moments[m][1],moments[m][2],moments[m][3],sep=',',end=",")  # IDs from the input
                # let i be always the H atom
                if at_symbols[j]=="H":
                    i=moments[m][1]
                    j=moments[m][0]

                print(neighbors[i][j],end=",")   # distance |ij|
                print(coordinates[i][3],coordinates[j][3],sep=",",end=",")  # charges of i and j

                GetMinMaxMeanNeighborsCharges(j, {i}, coordinates, neighbors)

                print(IsAtomCyclic(j, cyclic), CountCyclicNeighbors(j, neighbors, cyclic), sep=",", end=",")

                GetG2descriptorB(i, j, at_symbols, coordinates, neighbors) # exclude 1. & 2. lev. neighbors, project into ij plane
                GetG2descriptorB(j, i, at_symbols, coordinates, neighbors)

                GetNeighborsCount(j,at_symbols, neighbors, {i}) # how many neighbors (of each type) j has
                Get2ndLevelNeighborsCount(j, at_symbols, neighbors) # how many 2nd level neighbors (of each type) j has
                GetNeighborsDistances(j, {i}, at_symbols, coordinates, neighbors) # distances between j and its neighbours (excluding i)
                GetNeighborsAngles(i,j,at_symbols, coordinates, neighbors)  # angles ijX
                GetNeighborsTorsions(i,j,at_symbols, coordinates, neighbors) # torsions ijXY
                Get2ndLevelDistances(j, at_symbols, coordinates, neighbors)  # distances between j and its 2nd level neighbors
                Get2ndLevelDistances(i, at_symbols, coordinates, neighbors)  # distances between i and its 2nd level neighbors
                GetNeighborsCharges(j, {i}, at_symbols, coordinates, neighbors) # get charges of neighbors of N/C
                #Get2ndLevelNeighborsCharges(j, at_symbols, coordinates, neighbors) # get charges of 2nd level neighbors of N/C
                GetChargeArrayOfCloseAtoms3(i, at_symbols, coordinates, neighbors) #H
                GetChargeArrayOfCloseAtoms3(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(i, at_symbols, coordinates, neighbors) #H
                GetChargeArrayOfCloseAtoms5(j, at_symbols, coordinates, neighbors)

                GetCoulombMatrixRow(i, coordinates, neighbors)
                GetCoulombMatrixRow(j, coordinates, neighbors)
                print("")

            '''''
            #2JHC  and 2JHN features...
            if moments[m][2]=="2JHC" or moments[m][2]=="2JHN":
                i=moments[m][0]
                j=moments[m][1]

                print(m,moments[m][0],moments[m][1],moments[m][2],moments[m][3],sep=',',end=",") # IDs from the input
                if at_symbols[j]=="H":
                    i=moments[m][1]  # H
                    j=moments[m][0]  # C or N

                X = next(iter(neighbors[i])) # the only bonded atom to H
                print(neighbors[i][X], neighbors[j][X], getdist(coordinates[i],coordinates[j]), # distances and the angle
                      getangle(coordinates[i], coordinates[X], coordinates[j]), sep=',',end=",")

                print(coordinates[i][3], coordinates[j][3], coordinates[X][3], sep=",", end=",")  # charges of i, j, and X

                GetIdentity(at_symbols[X])
                GetNeighborsCount(X, at_symbols, neighbors, {i,j}) # get X neighbors
                GetNeighborsCount(j, at_symbols, neighbors, {X}) # get C neighbors
                Get2ndLevelNeighborsCount(j, at_symbols, neighbors)  # get C 2nd level neighbors counts
                GetNeighborsDistances(j, {X}, at_symbols, coordinates, neighbors)
                GetNeighborsDistances(X, {i,j}, at_symbols, coordinates, neighbors)
                GetNeighborsAngles(i,X,at_symbols, coordinates, neighbors)
                GetNeighborsAngles(j,X,at_symbols, coordinates, neighbors)
                GetNeighborsTorsions2(i,X,j,at_symbols, coordinates, neighbors)

                GetMinMaxMeanNeighborsCharges(j, {X}, coordinates, neighbors)
                GetMinMaxMeanNeighborsCharges(X, {i,j}, coordinates, neighbors)

                print(IsAtomCyclic(j, cyclic), CountCyclicNeighbors(j, neighbors, cyclic), sep=",", end=",")
                print(IsAtomCyclic(X, cyclic), CountCyclicNeighbors(X, neighbors, cyclic), sep=",", end=",")

                GetG2descriptorB(i, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(j, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(X, i, at_symbols, coordinates, neighbors)

                GetChargeArrayOfCloseAtoms3(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(X, at_symbols, coordinates, neighbors)

                Get2ndLevelDistances(i, at_symbols, coordinates, neighbors)  # distances between H and its 2nd level neighbors
                Get2ndLevelDistances(j, at_symbols, coordinates, neighbors)  # distances between C/N and its 2nd level neighbors
                Get2ndLevelDistances(X, at_symbols, coordinates, neighbors)  # distances between X and its 2nd level neighbors

                GetNeighborsCharges(j, {X}, at_symbols, coordinates, neighbors) # get charges of neighbors of N/C
                GetNeighborsCharges(X, {i,j}, at_symbols, coordinates, neighbors)  # get charges of neighbors of X


            #3JHC  and 3JHN features...
            if moments[m][2]=="3JHC" or moments[m][2]=="3JHN":
                i=moments[m][0]
                j=moments[m][1]
                print(m,moments[m][0],moments[m][1],moments[m][2],moments[m][3],sep=',',end=",") # IDs from the input
                if at_symbols[j]=="H":
                    i=moments[m][1]  # H
                    j=moments[m][0]  # C or N
                X = next(iter(neighbors[i]))

                Y = None
                for y in neighbors[X]:
                    if y in neighbors[j]:
                        Y = y
                if Y == None:
                    print("Error, Y not found in "+infile,file=stderr)
                    exit(10)

                GetIdentity(at_symbols[X])
                GetIdentity(at_symbols[Y])
                print(neighbors[i][X], neighbors[X][Y], neighbors[Y][j],
                      getdist(coordinates[i],coordinates[Y]),
                      getdist(coordinates[j],coordinates[X]),
                      getdist(coordinates[i],coordinates[j]), sep=',',end=",")  # distances between iX, XY, Yj, iY, jX, ij

                print(coordinates[i][3], coordinates[j][3], coordinates[X][3], coordinates[Y][3], sep=",", end=",")  # charges of i, j, X, and Y

                print(getangle(coordinates[i], coordinates[X], coordinates[Y]),
                      getangle(coordinates[X], coordinates[Y], coordinates[j]),
                      abs(gettors(coordinates[i], coordinates[X], coordinates[Y], coordinates[j])), sep=',',end=",") # angles and torsion

                GetNeighborsCount(j, at_symbols, neighbors, ignore = {Y}) # get C neighbors)
                GetNeighborsCount(X, at_symbols, neighbors, ignore={Y,i}) # get X neighbors
                GetNeighborsCount(Y, at_symbols, neighbors, {X,j}) # get Y neighbors

                GetNeighborsDistances(X, {i, Y}, at_symbols, coordinates, neighbors)  # distances from X
                GetNeighborsDistances(Y, {X, j}, at_symbols, coordinates, neighbors)  # distances from Y
                GetNeighborsDistances(j, {Y}, at_symbols, coordinates, neighbors)  # distances from j

                GetNeighborsAngles(i,X,at_symbols, coordinates, neighbors)
                GetNeighborsAngles(X,Y,at_symbols, coordinates, neighbors)
                GetNeighborsAngles(Y,j,at_symbols, coordinates, neighbors)
                GetNeighborsTorsions2(X,Y,j,at_symbols, coordinates, neighbors)
                GetNeighborsTorsions2(i,X,Y,at_symbols, coordinates, neighbors)
                GetNeighborsTorsions2(j,Y,X,at_symbols, coordinates, neighbors)

                GetMinMaxMeanNeighborsCharges(j, {Y}, coordinates, neighbors)
                GetMinMaxMeanNeighborsCharges(X, {i, Y}, coordinates, neighbors)
                GetMinMaxMeanNeighborsCharges(Y, {j, X}, coordinates, neighbors)

                print(IsAtomCyclic(j, cyclic), CountCyclicNeighbors(j, neighbors, cyclic), sep=",", end=",")
                print(IsAtomCyclic(X, cyclic), CountCyclicNeighbors(X, neighbors, cyclic), sep=",", end=",")
                print(IsAtomCyclic(Y, cyclic), CountCyclicNeighbors(Y, neighbors, cyclic), sep=",", end=",")

                GetG2descriptorB(i, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(j, Y, at_symbols, coordinates, neighbors)
                GetG2descriptorB(X, i, at_symbols, coordinates, neighbors)
                GetG2descriptorB(Y, j, at_symbols, coordinates, neighbors)

                GetChargeArrayOfCloseAtoms3(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(Y, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(Y, at_symbols, coordinates, neighbors)

                Get2ndLevelDistances(i, at_symbols, coordinates,
                                     neighbors)  # distances between i and its 2nd level neighbors
                Get2ndLevelDistances(j, at_symbols, coordinates,
                                     neighbors)  # distances between j and its 2nd level neighbors
                Get2ndLevelDistances(X, at_symbols, coordinates,
                                     neighbors)  # distances between X and its 2nd level neighbors
                Get2ndLevelDistances(Y, at_symbols, coordinates,
                                     neighbors)  # distances between Y and its 2nd level neighbors

                GetNeighborsCharges(j, {Y}, at_symbols, coordinates, neighbors) # get charges of neighbors of N/C
                GetNeighborsCharges(X, {i,Y}, at_symbols, coordinates, neighbors)  # get charges of neighbors of X
                GetNeighborsCharges(Y, {X,j}, at_symbols, coordinates, neighbors)  # get charges of neighbors of Y

            #2JHH features
            if moments[m][2]=="2JHH":
                i=moments[m][0]
                j=moments[m][1]

                # symmetry is broken by charge  i is the Hydrogen atom with smaller mulliken charge
                ci = coordinates[i][3] # charge of i
                cj = coordinates[j][3] # charge of j
                if ci>cj:
                    kk = i
                    i = j
                    j = kk

                print(m,moments[m][0],moments[m][1],moments[m][2],moments[m][3],sep=',',end=",")  # get IDs from the input
                X = next(iter(neighbors[i]))
                print(min(neighbors[i][X], neighbors[j][X]), max(neighbors[i][X], neighbors[j][X]), getdist(coordinates[i],coordinates[j]), getangle(coordinates[i], coordinates[X], coordinates[j]),sep=',',end=",")
                GetIdentity(at_symbols[X])
                GetNeighborsCount(X, at_symbols, neighbors, {i,j}) # get X neighbors
                GetNeighborsDistances(X, {i,j}, at_symbols, coordinates, neighbors)
                GetNeighborsMinAngles(i,j,X,at_symbols, coordinates, neighbors)
                GetNeighborsMaxAngles(i,j,X,at_symbols, coordinates, neighbors)  # experiment with replacing for normal angles (instead of min/max)

                print(coordinates[i][3], coordinates[j][3], coordinates[X][3], sep=",", end=",")  # charges of i, j, and X

                GetMinMaxMeanNeighborsCharges(X, {i, j}, coordinates, neighbors)

                print(IsAtomCyclic(X, cyclic), CountCyclicNeighbors(X, neighbors, cyclic), sep=",", end=",")

                GetG2descriptorB(i, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(j, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(X, i, at_symbols, coordinates, neighbors)

                GetChargeArrayOfCloseAtoms3(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(X, at_symbols, coordinates, neighbors)

                Get2ndLevelDistances(i, at_symbols, coordinates,
                                     neighbors)  # distances between i and its 2nd level neighbors
                Get2ndLevelDistances(j, at_symbols, coordinates,
                                     neighbors)  # distances between j and its 2nd level neighbors
                Get2ndLevelDistances(X, at_symbols, coordinates,
                                     neighbors)  # distances between X and its 2nd level neighbors

                GetNeighborsCharges(X, {i,j}, at_symbols, coordinates, neighbors)  # get charges of neighbors of X

            #3JHH features
            if moments[m][2]=="3JHH":
                i=moments[m][0]
                j=moments[m][1]

                # symmetry is broken by charge  i is the Hydrogen atom with smaller mulliken charge
                ci = coordinates[i][3]  # charge of i
                cj = coordinates[j][3]  # charge of j
                if ci > cj:
                    kk = i
                    i = j
                    j = kk

                print(m,moments[m][0],moments[m][1],moments[m][2],moments[m][3],sep=',',end=",") # IDs from the input
                X = next(iter(neighbors[i]))
                Y = next(iter(neighbors[j]))
                a1 = getdist(coordinates[X],coordinates[j])
                a2 = getdist(coordinates[Y],coordinates[i])
                ang1 = getangle(coordinates[i], coordinates[X], coordinates[Y])
                ang2 = getangle(coordinates[j], coordinates[Y], coordinates[X])
                print(min(neighbors[i][X], neighbors[j][Y]), max(neighbors[i][X], neighbors[j][Y]), min(a1,a2), max(a1,a2), getdist(coordinates[i],coordinates[j]), getdist(coordinates[X],coordinates[Y]),sep=',',end=",")
                print(min(ang1, ang2), max(ang1, ang2), abs(gettors(coordinates[i], coordinates[X], coordinates[Y], coordinates[j])),sep=',',end=",")
                GetIdentity(at_symbols[X], at_symbols[Y])
                GetNeighborsCount(X, at_symbols, neighbors, {Y, i}) # get X neighbors
                GetNeighborsCount(Y, at_symbols, neighbors, {X, j}) # get Y neighbors

                GetNeighborsDistances(X, {i, Y}, at_symbols, coordinates, neighbors)
                GetNeighborsDistances(Y, {j, X}, at_symbols, coordinates, neighbors)

                print(coordinates[i][3], coordinates[j][3], coordinates[X][3], coordinates[Y][3], sep=",", end=",")  # charges of i, j, X, and Y

                #TODO: possibly missing some angle and torsion features


                GetMinMaxMeanNeighborsCharges(X, {i, Y}, coordinates, neighbors)
                GetMinMaxMeanNeighborsCharges(Y, {j, X}, coordinates, neighbors)

                print(IsAtomCyclic(X, cyclic), CountCyclicNeighbors(X, neighbors, cyclic), sep=",", end=",")
                print(IsAtomCyclic(Y, cyclic), CountCyclicNeighbors(Y, neighbors, cyclic), sep=",", end=",")

                GetG2descriptorB(i, X, at_symbols, coordinates, neighbors)
                GetG2descriptorB(j, Y, at_symbols, coordinates, neighbors)
                GetG2descriptorB(X, i, at_symbols, coordinates, neighbors)
                GetG2descriptorB(Y, j, at_symbols, coordinates, neighbors)

                GetChargeArrayOfCloseAtoms3(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms3(Y, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(i, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(j, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(X, at_symbols, coordinates, neighbors)
                GetChargeArrayOfCloseAtoms5(Y, at_symbols, coordinates, neighbors)

                Get2ndLevelDistances(i, at_symbols, coordinates,
                                     neighbors)  # distances between i and its 2nd level neighbors
                Get2ndLevelDistances(j, at_symbols, coordinates,
                                     neighbors)  # distances between j and its 2nd level neighbors
                Get2ndLevelDistances(X, at_symbols, coordinates,
                                     neighbors)  # distances between X and its 2nd level neighbors
                Get2ndLevelDistances(Y, at_symbols, coordinates,
                                     neighbors)  # distances between X and its 2nd level neighbors

                GetNeighborsCharges(X, {i,Y}, at_symbols, coordinates, neighbors)  # get charges of neighbors of X
                GetNeighborsCharges(Y, {X,j}, at_symbols, coordinates, neighbors)  # get charges of neighbors of Y
                '''
            #print("")

        break   # read only 1st structure
    structfile.close()
    return

def main():
    '''
    #===============================================================================
    #                               MAIN MAIN MAIN MAIN
    #===============================================================================
    '''
    
    (options,args)=parsecmd()
    
    infile=args[0]
    outfiles=[]
    #tasklist contain the list of task.the list in the 1st element is
    #for the distances, that in the 2nd is for angle and in the 3rd for torsions
    tasklist=[]
        
    fformat=options.fformat     #get format input file
            
    if options.periodicity:   #get periodicity
        pbc=options.periodicity
    else:
        pbc=None

    if options.filedata: #read data from file
        filedata=safeopen(options.filedata,'r')
        if filedata:
            (tasklist,outfiles)=read_filedata(filedata)
        else:
            print("Cannot find "+options.filedata)
    else:
        if options.distance: #distance
            junk=[]
            junk.append(list(options.distance)) #convert the tuple from the cml to a list
            tasklist.append(junk)
            tasklist.append(None) #no angle to calculate
            tasklist.append(None) #no torsion to calculate
            #create list outfiles in the form [['file'],None,None]
            outfiles.append('distcml.dat')
            outfiles.append(None)
            outfiles.append(None)
        elif options.angle: #angle
            tasklist.append(None) #no distance to calculate
            junk=[]
            junk.append(list(options.angle)) #convert the tuple from the cml to a list
            tasklist.append(junk)
            tasklist.append(None) #no torsion to calculate
            outfiles.append(None)
            outfiles.append('angcml.dat')
            outfiles.append(None)
        elif options.torsion: #torsion
            tasklist.append(None) #no distance to calculate
            tasklist.append(None) #no angle to calculate
            junk=[]
            junk.append(list(options.torsion)) #convert the tuple from the cml to a list
            tasklist.append(junk)
            outfiles.append(None)
            outfiles.append(None)
            outfiles.append('torscml.dat')
    
    # run calculation
    run(infile,tasklist,fformat,outfiles,pbc)
    return


if __name__ == "__main__":
    main()
    exit(0)


