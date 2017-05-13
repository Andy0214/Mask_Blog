.class public Lcom/seclover/ctf1/ToolsUtils;
.super Ljava/lang/Object;
.source "ToolsUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static SHA(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "decript"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 70
    :try_start_1
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 71
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v7, "utf-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 73
    .local v4, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v3, "hexString":Ljava/lang/StringBuffer;
    array-length v7, v4

    :goto_1a
    if-lt v6, v7, :cond_21

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "messageDigest":[B
    :goto_20
    return-object v6

    .line 74
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "hexString":Ljava/lang/StringBuffer;
    .restart local v4    # "messageDigest":[B
    :cond_21
    aget-byte v0, v4, v6

    .line 75
    .local v0, "b":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "shaHex":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_34

    .line 77
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    :cond_34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_3a

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 82
    .end local v0    # "b":B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "messageDigest":[B
    .end local v5    # "shaHex":Ljava/lang/String;
    :catch_3a
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v6, ""

    goto :goto_20
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "decript"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 90
    :try_start_1
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 91
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 93
    .local v4, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v3, "hexString":Ljava/lang/StringBuffer;
    array-length v7, v4

    :goto_18
    if-lt v6, v7, :cond_1f

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "messageDigest":[B
    :goto_1e
    return-object v6

    .line 94
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "hexString":Ljava/lang/StringBuffer;
    .restart local v4    # "messageDigest":[B
    :cond_1f
    aget-byte v0, v4, v6

    .line 95
    .local v0, "b":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "shaHex":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_32

    .line 97
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    :cond_32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_35} :catch_38

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 102
    .end local v0    # "b":B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "messageDigest":[B
    .end local v5    # "shaHex":Ljava/lang/String;
    :catch_38
    move-exception v2

    .line 103
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 104
    const-string v6, ""

    goto :goto_1e
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    invoke-static {}, Lcom/seclover/ctf1/ToolsUtils;->isSdCardExist()Z

    move-result v0

    .line 120
    .local v0, "exist":Z
    const-string v1, ""

    .line 121
    .local v1, "sdpath":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_10
    return-object v1

    .line 125
    :cond_11
    const-string v1, ""

    goto :goto_10
.end method

.method public static getSign1nfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 60
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    .line 58
    aget-object v1, v1, v2

    .line 60
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v1

    .line 64
    :goto_19
    return-object v1

    .line 61
    :catch_1a
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-string v1, "invalid"

    goto :goto_19
.end method

.method public static getSignInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    .line 47
    aget-object v1, v1, v2

    .line 49
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/seclover/ctf1/ToolsUtils;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v1

    .line 53
    :goto_1d
    return-object v1

    .line 50
    :catch_1e
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-string v1, "invalid"

    goto :goto_1d
.end method

.method public static isSdCardExist()Z
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "mounted"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 29
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_30

    move-result-object v2

    .line 35
    .local v2, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v3, "hex":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1a
    if-lt v4, v5, :cond_39

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 30
    .end local v2    # "hash":[B
    .end local v3    # "hex":Ljava/lang/StringBuilder;
    :catch_27
    move-exception v1

    .line 31
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Huh, MD5 should be supported?"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 32
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_30
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Huh, UTF-8 should be supported?"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 36
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "hash":[B
    .restart local v3    # "hex":Ljava/lang/StringBuilder;
    :cond_39
    aget-byte v0, v2, v4

    .line 37
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_46

    .line 38
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_46
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a
.end method
