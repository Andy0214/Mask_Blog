利用python解析dex文件的源码分析
====================
------------------

前言：

因为自己暂时写不出来，所以就分析别人的学习学习，需要结合前面分析dex的文章一起看

*侵删


----------
DexHeader类：
-----------

定义了DexHeader区域中相关的属性

    class DexHeader(object):
    def __init__(self, ):
        super(DexHeader, self).__init__()
        self.f = None
        self.magic = None
        self.checksum = None
        self.signature = None
        self.file_size = None
        self.header_size = None
        self.endian_tag = None
        self.link_size = None
        self.link_off = None
        self.map_off = None
        self.string_ids_size = None
        self.string_ids_off = None
        self.type_ids_size = None
        self.type_ids_off = None
        self.proto_ids_size = None
        self.proto_ids_off = None
        self.field_ids_size = None
        self.field_ids_off = None
        self.method_ids_size = None
        self.method_ids_off = None
        self.class_defs_size = None
        self.class_defs_off = None
        self.data_size = None
        self.data_off = None




初始化DexHeader中的相关属性
------------------

    def init_header(self, filepath):
        f = open(filepath, "rb")


        #w     以写方式打开，
        #a     以追加模式打开 (从 EOF 开始, 必要时创建新文件)
        #r+     以读写模式打开
        #w+     以读写模式打开 (参见 w )
        #a+     以读写模式打开 (参见 a )
        #rb     以二进制读模式打开
        #wb     以二进制写模式打开 (参见 w )
        #ab     以二进制追加模式打开 (参见 a )
        #rb+    以二进制读写模式打开 (参见 r+ )
        #wb+    以二进制读写模式打开 (参见 w+ )
        #ab+    以二进制读写模式打开 (参见 a+ )
        #a.     Python 2.3 中新增

        self.DexHeader.f = f

        f.seek(0x0, 0)
        self.DexHeader.magic = binascii.b2a_hex(f.read(8)) #读取前面8个字节二进制码然后在再用十六进制表示

        f.seek(0x8, 0) //文件开头偏移8个字节
        self.DexHeader.checksum = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex') #读取4个字节然后将16进制转换为ascii码然后再倒叙转为16进制(因为内存中是小端读取） 

        f.seek(0xc, 0)
        self.DexHeader.signature = binascii.b2a_hex(f.read(20))

        f.seek(0x20, 0)
        self.DexHeader.file_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x24, 0)
        self.DexHeader.header_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x28, 0)
        self.DexHeader.endian_tag = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x2c, 0)
        self.DexHeader.link_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x30, 0)
        self.DexHeader.link_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x34, 0)
        self.DexHeader.map_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x38, 0)
        self.DexHeader.string_ids_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x3c, 0)
        self.DexHeader.string_ids_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x40, 0)
        self.DexHeader.type_ids_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x44, 0)
        self.DexHeader.type_ids_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x48, 0)
        self.DexHeader.proto_ids_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x4c, 0)
        self.DexHeader.proto_ids_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x50, 0)
        self.DexHeader.field_ids_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x54, 0)
        self.DexHeader.field_ids_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x58, 0)
        self.DexHeader.method_ids_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x5c, 0)
        self.DexHeader.method_ids_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x60, 0)
        self.DexHeader.class_defs_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x64, 0)
        self.DexHeader.class_defs_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x68, 0)
        self.DexHeader.data_size = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')

        f.seek(0x6c, 0)
        self.DexHeader.data_off = binascii.b2a_hex(f.read(4)).decode('hex')[::-1].encode('hex')


打印输出DexHeader区域：
----------------

    def print_header(self):
        print '[+] magic:\t0x' + self.DexHeader.magic
        print '[+] checksum:\t0x' + self.DexHeader.checksum
        print '[+] signature:\t' + self.DexHeader.signature
        print '[+] file_size:\t0x' + self.DexHeader.file_size
        print '[+] header_size:\t0x' + self.DexHeader.header_size
        print '[+] endian_tag:\t0x' + self.DexHeader.endian_tag
        print '[+] link_size:\t0x' + self.DexHeader.link_size
        print '[+] link_off:\t0x' + self.DexHeader.link_off
        print '[+] map_off:\t0x' + self.DexHeader.map_off
        print '[+] string_ids_size:\t0x' + self.DexHeader.string_ids_size
        print '[+] string_ids_off:\t0x' + self.DexHeader.string_ids_off
        print '[+] type_ids_size:\t0x' + self.DexHeader.type_ids_size
        print '[+] type_ids_off:\t0x' + self.DexHeader.type_ids_off
        print '[+] proto_ids_size:\t0x' + self.DexHeader.proto_ids_size
        print '[+] proto_ids_off:\t0x' + self.DexHeader.proto_ids_off
        print '[+] field_ids_size:\t0x' + self.DexHeader.field_ids_size
        print '[+] field_ids_off:\t0x' + self.DexHeader.field_ids_off
        print '[+] method_ids_size:\t0x' + self.DexHeader.method_ids_size
        print '[+] method_ids_off:\t0x' + self.DexHeader.method_ids_off
        print '[+] class_defs_size:\t0x' + self.DexHeader.class_defs_size
        print '[+] class_defs_off:\t0x' + self.DexHeader.class_defs_off
        print '[+] data_size:\t0x' + self.DexHeader.data_size
        print '[+] data_off:\t0x' + self.DexHeader.data_off

print_DexMapList方法：
---------------

DexHeader结构的map_off字段指明了DexMapList结构在Dex文件中的偏移

    def print_DexMapList(self):
        """
        typedef struct DexMapList {
            u4  size;               /* #of entries in list */
            DexMapItem list[1];     /* entries */
        } DexMapList;
        """
        map_off_int = int(self.DexHeader.map_off, 16)

        #u4 size
        self.DexHeader.f.seek(map_off_int, 0)
        size_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
        size = int(size_hex, 16)

        for index in range(size):
            # DexMapItem list[]
            self.print_DexMapItem(map_off_int+4, index) #这里调用了pint_DexMapItem方法


print_DexMapItem方法
------------------
    def print_DexMapItem(self, map_off, index):
        """
        typedef struct DexMapItem {
            u2  type;              /* type code (see kDexType* above) */
            u2  unused;
            u4  size;              /* count of items of the indicated type */
            u4  offset;            /* file offset to the start of data */
        } DexMapItem;
        """
        #u2 type
        self.DexHeader.f.seek(map_off + index*12, 0)
        dexType = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')

        #u2 unused
        self.DexHeader.f.seek(map_off + index*12 + 2, 0)
        unused = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')

        #u4 size
        self.DexHeader.f.seek(map_off + index*12 + 4, 0)
        size = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')

        #u4 offset
        self.DexHeader.f.seek(map_off + index*12 + 8, 0)
        offset = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')

        print '\n'
        print '[+] #%d DexMapItem:\t' % index
        print '    u2 dexType\t%s #%s' % (dexType, MAP_ITEM_TYPE_CODES[int(dexType, 16)])
        print '    u2 unused\t' + unused
        print '    u4 size\t' + size
        print '    u4 offset\t' + offset


初始化DexStringId:
---------------


    def init_DexStringId(self):
        """
        typedef struct DexStringId {
            u4  stringDataOff;      /* file offset to string_data_item */
        } DexStringId;
        """
        string_ids_off_int = int(self.DexHeader.string_ids_off, 16) #将DexHeader.string_ids_off（16进制）转换为10进制数     string_ids的偏移
        string_ids_size_int = int(self.DexHeader.string_ids_size, 16) #string_ids的大小

        for index in range(string_ids_size_int):
            # string offset  
            self.DexHeader.f.seek(string_ids_off_int + index*4, 0) //从string_ids_off_int（即string offset)处开始读取
            string_data_off = int(binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex'), 16) #读取四个字节，然后和刚才一样，用小端读法转换为16进制
            self.DexHeader.f.seek(string_data_off, 0) #从string_data_off开始读

            # length of str
            self.DexHeader.f.read(1) 读取第一个字节，这个字节是string的长度

            length = 0
            while int(binascii.b2a_hex(self.DexHeader.f.read(1)).decode('hex')[::-1].encode('hex'),16) != 0:
                length += 1

            self.DexHeader.f.seek(string_data_off + 1,0)
            dex_str = self.DexHeader.f.read(length)
            self.DexHeader.f.read(1) # remove \x00
            string_data_off += (length + 2) # + \0 + size bit

            # self.DexStringIdList.append(dex_str.decode('utf-8'))
            self.DexStringIdList.append(dex_str)

    print_DexStringId：
----------------------


    def print_DexStringId(self):

        print '\n'
        print '[+] DexStringId:'
        for index in range(len(self.DexStringIdList)):
            print '    #%s %s' % (hex(index), self.DexStringIdList[index])

下面就不细说了，读取的方式是相同的，直接上代码

DexTypeList类：
---------------

    class DexTypeList(object):
    def __init__(self, ):
        super(DexTypeList, self).__init__()
        self.size = None
        self.list = []

    def toString(self, dexFile):
        parametersStr = ''
        if self.size:
            for idx in self.list:
                parametersStr += dexFile.getDexTypeId(idx) + ','
        return '(%s)' % parametersStr

初始化DexTypeId：
-------------

    def init_DexTypeId(self):
        type_ids_off_int = int(self.DexHeader.type_ids_off, 16)
        type_ids_size_int = int(self.DexHeader.type_ids_size, 16)

        self.DexHeader.f.seek(type_ids_off_int, 0)

        for index in range(type_ids_size_int):
            descriptorIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            descriptorIdx_int = int(descriptorIdx_hex, 16)

            self.DexTypeIdList.append(descriptorIdx_int)

print_DexTypeId
---------------


    def print_DexTypeId(self):
        print '\n'
        print '[+] DexTypeId:'
        for index in range(len(self.DexTypeIdList)):
            print '    #%s #%s' % (hex(index), self.getDexTypeId(index))

DexProtoId类：
------------
    class DexProtoId(object):
    def __init__(self, ):
        super(DexProtoId, self).__init__()
        self.shortyIdx = None
        self.returnTypeIdx = None
        self.parameterOff = None
        self.dexTypeList = None

        # Address index
        self.offset = None
        self.length = 0

    def toString(self, dexFile):
        if self.dexTypeList:
            return '%s%s' % (self.dexTypeList.toString(dexFile),  dexFile.getDexTypeId(self.returnTypeIdx))
        else:
            return '()%s' % dexFile.getDexTypeId(self.returnTypeIdx)



初始化DexProtoId：
------

    def init_DexProtoId(self):
        proto_ids_size_int = int(self.DexHeader.proto_ids_size, 16) #将DexHeader.proto_ids_size的16进制转换为10进制
        proto_ids_off_int = int(self.DexHeader.proto_ids_off, 16) #同样转换为10进制

        for index in range(proto_ids_size_int):
            self.DexHeader.f.seek(proto_ids_off_int+index*12, 0) #开始读取参数，12个字节12个字节一读
            dexProtoIdObj = DexProtoId()
            # u4 shortyIdx
            shortyIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            shortyIdx = int(shortyIdx_hex, 16)
            # u4 returnTypeIdx
            returnTypeIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            returnTypeIdx = int(returnTypeIdx_hex, 16)
            # u4 parametersOff
            parametersOff_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            parametersOff = int(parametersOff_hex, 16)

            dexProtoIdObj.shortyIdx = shortyIdx
            dexProtoIdObj.returnTypeIdx = returnTypeIdx
            dexProtoIdObj.parameterOff = parametersOff
            dexProtoIdObj.offset = proto_ids_off_int + index * 12
            dexProtoIdObj.length = 12

            if parametersOff == 0:
                dexProtoIdObj.dexTypeList = None
                self.DexProtoIdList.append(dexProtoIdObj)

                continue
            self.DexHeader.f.seek(parametersOff, 0)

            parameter_str = ""
            # Struct DexTypeList
            # u4 size
            dexTypeItemSize_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            dexTypeItemSize = int(dexTypeItemSize_hex, 16)

            dexTypeListObj = DexTypeList()
            dexTypeListObj.size = dexTypeItemSize

            # DexTypeItem list[]
            for i in range(dexTypeItemSize):
                # Struct DexTypeItem
                # u2 typeIdx
                typeIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')
                typeIdx = int(typeIdx_hex, 16)
                dexTypeListObj.list.append(typeIdx)

            dexProtoIdObj.dexTypeList = dexTypeListObj
            self.DexProtoIdList.append(dexProtoIdObj)

    def getDexStringId(self, shortyIdx):
        return self.DexStringIdList[shortyIdx]

    def getDexTypeId(self, returnTypeIdx):
        return self.DexStringIdList[self.DexTypeIdList[returnTypeIdx]]

print_DexProtoId
----------------------

    def print_DexProtoId(self):
        proto_ids_off_int = int(self.DexHeader.proto_ids_off, 16)
        self.DexHeader.f.seek(proto_ids_off_int, 0)
        print '\n'
        print '[+] DexProtoId:'
        for index in range(len(self.DexProtoIdList)):
            dexProtoidObj = self.DexProtoIdList[index]

            shortyIdxStr = self.getDexStringId(dexProtoidObj.shortyIdx)
            returnTypeIdxStr = self.getDexStringId(dexProtoidObj.returnTypeIdx)

            print '    #%s (%s~%s)' % (hex(index), hex(dexProtoidObj.offset), hex(dexProtoidObj.offset + dexProtoidObj.length))
            print '    DexProtoId[%d]->shortyIdx= %s\t#%s' % (index,hex(dexProtoidObj.shortyIdx), shortyIdxStr)
            print '    DexProtoId[%d]->returnTypeIdx= %s\t#%s' % (index, hex(dexProtoidObj.returnTypeIdx), returnTypeIdxStr)
            print '    DexProtoId[%d]->parametersOff= %s' % (index, hex(dexProtoidObj.parameterOff))
            if dexProtoidObj.dexTypeList:
                print '      DexTypeList->size= %s' % hex(dexProtoidObj.dexTypeList.size)
                for k in range(dexProtoidObj.dexTypeList.size):
                    print '      DexTypeList->list[%d]= %s\t#%s' % (k, hex(dexProtoidObj.dexTypeList.list[k]), self.getDexTypeId(dexProtoidObj.dexTypeList.list[k]))
            print ''





DexMethodId类：
-------------

    class DexMethodId(object):
    def __init__(self, ):
        super(DexMethodId, self).__init__()
        self.classIdx = None
        self.protoIdx = None
        self.nameIdx = None

        # Address index
        self.offset = None
        self.length = 0

    def toString(self, dexFile):
        if (self.classIdx != None) and (self.protoIdx != None) and (self.nameIdx != None):
            return '%s.%s:%s' % (dexFile.getDexTypeId(self.classIdx),
                                 dexFile.getDexStringId(self.nameIdx),
                                 dexFile.DexProtoIdList[self.protoIdx].toString(dexFile))
        else:
            return None



初始化加打印：
-------
    def init_DexMethodId(self):
        method_ids_off = int(self.DexHeader.method_ids_off, 16)
        method_ids_size = int(self.DexHeader.method_ids_size, 16)

        self.DexHeader.f.seek(method_ids_off, 0)

        for index in range(method_ids_size):
            # DexMethodId
            dexMethodIdObj = DexMethodId()
            # u2 classIdx
            classIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')
            classIdx = int(classIdx_hex, 16)
            # u2 protoIdx
            protoIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')
            protoIdx = int(protoIdx_hex, 16)
            # u4 nameIdx
            nameIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            nameIdx = int(nameIdx_hex, 16)

            dexMethodIdObj.classIdx = classIdx
            dexMethodIdObj.protoIdx = protoIdx
            dexMethodIdObj.nameIdx = nameIdx
            dexMethodIdObj.offset = method_ids_off + index * 8
            dexMethodIdObj.length = 8

            self.DexMethodIdList.append(dexMethodIdObj)

    def print_DexMethodId(self):
        print '\n'
        print '[+] DexMethodId:'
        for index in range(len(self.DexMethodIdList)):
            # DexMethodId
            # u2 classIdx
            classIdx = self.DexMethodIdList[index].classIdx
            # u2 protoIdx
            protoIdx = self.DexMethodIdList[index].protoIdx
            # u4 nameIdx
            nameIdx = self.DexMethodIdList[index].nameIdx

            print '    #%s (%s~%s)' % (hex(index), hex(self.DexMethodIdList[index].offset), hex(self.DexMethodIdList[index].offset + self.DexMethodIdList[index].length))
            print '    DexMethodId[%d]->classIdx=%s\t#%s' % (index, hex(classIdx), self.getDexTypeId(classIdx))
            print '    DexMethodId[%d]->protoIdx=%s\t#%s' % (index, hex(protoIdx), self.DexProtoIdList[protoIdx].toString(self))
            print '    DexMethodId[%d]->nameIdx =%s\t#%s' % (index, hex(nameIdx), self.DexStringIdList[nameIdx])
            print ''

DexFieldId类：
------------


    class DexFieldId(object):
    def __init__(self, ):
        super(DexFieldId, self).__init__()
        self.classIdx = None
        self.typeIdx = None
        self.nameIdx = None

        # Address index
        self.offset = None
        self.length = 0

    def toString(self, dexFile):
        if (self.classIdx != None) and (self.typeIdx != None) and (self.nameIdx != None):
            return '%s.%s:%s' % (dexFile.getDexTypeId(self.classIdx),
                                 dexFile.getDexStringId(self.nameIdx),
                                 dexFile.getDexTypeId(self.typeIdx))
        else:
            return None


初始化DexField:
----------------

    def int_DexFieldId(self):
        field_ids_off = int(self.DexHeader.field_ids_off, 16)
        field_ids_size = int(self.DexHeader.field_ids_size, 16)

        self.DexHeader.f.seek(field_ids_off, 0)

        for index in range(field_ids_size):
            # DexFieldId
            dexFieldIdObj = DexFieldId()
            # u2 classIdx
            classIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')
            classIdx = int(classIdx_hex, 16)
            # u2 typeIdx
            typeIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(2)).decode('hex')[::-1].encode('hex')
            typeIdx = int(typeIdx_hex, 16)
            # u4 nameIdx
            nameIdx_hex = binascii.b2a_hex(self.DexHeader.f.read(4)).decode('hex')[::-1].encode('hex')
            nameIdx = int(nameIdx_hex, 16)

            dexFieldIdObj.classIdx = classIdx
            dexFieldIdObj.typeIdx = typeIdx
            dexFieldIdObj.nameIdx = nameIdx
            dexFieldIdObj.offset = field_ids_off + index * 8
            dexFieldIdObj.length = 8

            self.DexFieldIdList.append(dexFieldIdObj)

    def print_DexFieldId(self):
        print '[+] DexFieldId:'
        for index in range(len(self.DexFieldIdList)):
            self.DexHeader.f.seek(self.DexFieldIdList[index].offset, 0)
            # DexFieldId
            # u2 classIdx
            classIdx = self.DexFieldIdList[index].classIdx
            # u2 typeIdx
            typeIdx = self.DexFieldIdList[index].typeIdx
            # u4 nameIdx
            nameIdx = self.DexFieldIdList[index].nameIdx

            print '    #%s (%s~%s)' % (hex(index), hex(self.DexFieldIdList[index].offset), hex(self.DexFieldIdList[index].offset + self.DexFieldIdList[index].length))
            print '    DexFieldId[%d]->classIdx=%s\t#%s' % (index, hex(classIdx), self.getDexStringId(classIdx))
            print '    DexFieldId[%d]->typeIdx=%s\t#%s' % (index, hex(typeIdx), self.getDexStringId(typeIdx))
            print '    DexFieldId[%d]->nameIdx=%s\t#%s' % (index, hex(nameIdx), self.getDexStringId(nameIdx))
            print ''


----------
分析的好累哇，后面大体差不多，无非是读取的字节大小差异罢了，直接给出源码地址