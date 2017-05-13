.class public Lcom/seclover/ctf1/Main;
.super Landroid/app/Activity;
.source "Main.java"


# static fields
.field private static final DEFAULT_FILENAME_DECODE:Ljava/lang/String; = "ctf1_decode.xlsx"

.field private static final DEFAULT_FILENAME_ENCODE:Ljava/lang/String; = "ctf1_encode.xlsx"

.field private static final DEFAULT_FILENAME_SRC:Ljava/lang/String; = "ctf1.xlsx"


# instance fields
.field private final PASS_LEN:I

.field private final PKG_NAME:Ljava/lang/String;

.field private SIGN_MD5:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private flagView:Landroid/widget/EditText;

.field private hint:Landroid/widget/TextView;

.field private k1:[B

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seclover/ctf1/Main;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/seclover/ctf1/Main;->PASS_LEN:I

    .line 30
    const-string v0, "com.seclover.ctf1"

    iput-object v0, p0, Lcom/seclover/ctf1/Main;->PKG_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "a056d5ab1fa5c250c293a5b7588d0749"

    iput-object v0, p0, Lcom/seclover/ctf1/Main;->SIGN_MD5:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/seclover/ctf1/Main;Landroid/content/SharedPreferences;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$1(Lcom/seclover/ctf1/Main;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/seclover/ctf1/Main;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/seclover/ctf1/Main;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/seclover/ctf1/Main;->check2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/seclover/ctf1/Main;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/seclover/ctf1/Main;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/seclover/ctf1/Main;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/seclover/ctf1/Main;->hint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/seclover/ctf1/Main;Landroid/content/SharedPreferences;I)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/seclover/ctf1/Main;->saveState(Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method private check(Ljava/lang/String;)Z
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x64

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "re":Z
    invoke-direct {p0, p0}, Lcom/seclover/ctf1/Main;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "sign":Ljava/lang/String;
    iget-object v4, p0, Lcom/seclover/ctf1/Main;->SIGN_MD5:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/seclover/ctf1/Main;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 181
    .end local v2    # "re":Z
    :goto_f
    return v2

    .line 172
    .restart local v2    # "re":Z
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-lt v0, v9, :cond_18

    .line 180
    invoke-direct {p0, p0}, Lcom/seclover/ctf1/Main;->encode(Landroid/content/Context;)Z

    .line 181
    const/4 v2, 0x1

    goto :goto_f

    .line 173
    :cond_18
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_19
    if-lt v1, v9, :cond_1e

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 174
    :cond_1e
    iget-object v4, p0, Lcom/seclover/ctf1/Main;->k1:[B

    add-int/lit8 v5, v0, 0x11

    add-int/lit8 v6, v1, 0x5

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v6, v6

    rem-int/2addr v5, v6

    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    mul-int v7, v0, v1

    iget-object v8, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-byte v6, v6, v7

    mul-int v7, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    mul-int/lit8 v7, v7, 0x7

    xor-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method private check2(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "re":Z
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1c

    .line 148
    :cond_10
    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 155
    .end local v0    # "re":Z
    :goto_1b
    return v0

    .line 152
    .restart local v0    # "re":Z
    :cond_1c
    invoke-direct {p0, p0}, Lcom/seclover/ctf1/Main;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "sign":Ljava/lang/String;
    invoke-direct {p0, p0}, Lcom/seclover/ctf1/Main;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/seclover/ctf1/Main;->SIGN_MD5:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/seclover/ctf1/Main;->verify2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b
.end method

.method private encode(Landroid/content/Context;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const/4 v7, 0x0

    .line 255
    .local v7, "re":Z
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 256
    const-string v9, "ctf1.xlsx"

    .line 255
    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v2, "fileR":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_13

    .line 285
    .end local v7    # "re":Z
    :goto_12
    return v7

    .line 264
    .restart local v7    # "re":Z
    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 265
    const-string v9, "ctf1_encode.xlsx"

    .line 264
    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v3, "fileW":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 268
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 269
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 270
    .local v0, "b":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 273
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    array-length v8, v0

    if-lt v6, v8, :cond_43

    .line 277
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 278
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 279
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 285
    .end local v0    # "b":[B
    .end local v3    # "fileW":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    :goto_41
    const/4 v7, 0x1

    goto :goto_12

    .line 274
    .restart local v0    # "b":[B
    .restart local v3    # "fileW":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    :cond_43
    aget-byte v8, v0, v6

    iget-object v9, p0, Lcom/seclover/ctf1/Main;->k1:[B

    iget-object v10, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v10, v10

    rem-int v10, v6, v10

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_52} :catch_55

    .line 273
    add-int/lit16 v6, v6, 0x100

    goto :goto_32

    .line 281
    .end local v0    # "b":[B
    .end local v3    # "fileW":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    :catch_55
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private getSign(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string v0, "com.seclover.ctf1"

    invoke-static {p1, v0}, Lcom/seclover/ctf1/ToolsUtils;->getSignInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveState(Landroid/content/SharedPreferences;I)V
    .registers 5
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "i"    # I

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "isEncrypted"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method

.method private verify(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v5, 0x0

    .line 188
    .local v5, "re":Z
    invoke-static {p1}, Lcom/seclover/ctf1/ToolsUtils;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    .line 189
    invoke-static {p2}, Lcom/seclover/ctf1/ToolsUtils;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 193
    .local v3, "k2":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v6, v6

    if-lt v0, v6, :cond_27

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "isBreak":Z
    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v6, v6

    array-length v7, v3

    if-le v6, v7, :cond_5b

    array-length v4, v3

    .line 205
    .local v4, "len":I
    :goto_21
    const/4 v0, 0x0

    :goto_22
    if-lt v0, v4, :cond_5f

    .line 213
    :goto_24
    if-eqz v1, :cond_76

    .end local v5    # "re":Z
    :goto_26
    return v5

    .line 194
    .end local v1    # "isBreak":Z
    .end local v4    # "len":I
    .restart local v5    # "re":Z
    :cond_27
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    array-length v6, v3

    if-lt v2, v6, :cond_2e

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 195
    :cond_2e
    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    mul-int v7, v0, v2

    mul-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x9

    iget-object v8, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v8, v8

    rem-int/2addr v7, v8

    iget-object v8, p0, Lcom/seclover/ctf1/Main;->k1:[B

    aget-byte v8, v8, v0

    mul-int/lit8 v9, v2, 0x5

    xor-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 196
    mul-int v6, v0, v2

    mul-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x9

    array-length v7, v3

    rem-int/2addr v6, v7

    aget-byte v7, v3, v0

    mul-int/lit8 v8, v2, 0x5

    xor-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 204
    .end local v2    # "j":I
    .restart local v1    # "isBreak":Z
    :cond_5b
    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    array-length v4, v6

    goto :goto_21

    .line 206
    .restart local v4    # "len":I
    :cond_5f
    iget-object v6, p0, Lcom/seclover/ctf1/Main;->k1:[B

    aget-byte v6, v6, v0

    aget-byte v7, v3, v0

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/seclover/ctf1/Main;->k1:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/seclover/ctf1/Main;->k1:[B

    aget-byte v7, v7, v0

    if-eq v6, v7, :cond_73

    .line 207
    const/4 v1, 0x1

    .line 208
    goto :goto_24

    .line 205
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 213
    :cond_76
    const/4 v5, 0x1

    goto :goto_26
.end method

.method private verify2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, "re":Z
    invoke-static {p1}, Lcom/seclover/ctf1/ToolsUtils;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 220
    .local v3, "k1":[B
    invoke-static {p2}, Lcom/seclover/ctf1/ToolsUtils;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 224
    .local v4, "k2":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v7, v3

    if-lt v0, v7, :cond_21

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "isBreak":Z
    array-length v7, v3

    array-length v8, v4

    if-le v7, v8, :cond_4f

    array-length v5, v4

    .line 236
    .local v5, "len":I
    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    if-lt v0, v5, :cond_51

    .line 244
    :goto_1e
    if-eqz v1, :cond_62

    .end local v6    # "re":Z
    :goto_20
    return v6

    .line 225
    .end local v1    # "isBreak":Z
    .end local v5    # "len":I
    .restart local v6    # "re":Z
    :cond_21
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_22
    array-length v7, v4

    if-lt v2, v7, :cond_28

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 226
    :cond_28
    mul-int v7, v0, v2

    mul-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x9

    array-length v8, v3

    rem-int/2addr v7, v8

    aget-byte v8, v3, v0

    mul-int/lit8 v9, v2, 0x5

    xor-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 227
    mul-int v7, v0, v2

    mul-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x9

    array-length v8, v4

    rem-int/2addr v7, v8

    aget-byte v8, v4, v0

    mul-int/lit8 v9, v2, 0x5

    xor-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 235
    .end local v2    # "j":I
    .restart local v1    # "isBreak":Z
    :cond_4f
    array-length v5, v3

    goto :goto_1b

    .line 237
    .restart local v5    # "len":I
    :cond_51
    aget-byte v7, v3, v0

    aget-byte v8, v4, v0

    xor-int/2addr v7, v8

    aget-byte v8, v3, v0

    xor-int/2addr v7, v8

    aget-byte v8, v3, v0

    if-eq v7, v8, :cond_5f

    .line 238
    const/4 v1, 0x1

    .line 239
    goto :goto_1e

    .line 236
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 244
    :cond_62
    const/4 v6, 0x1

    goto :goto_20
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_25

    .line 132
    :cond_19
    const v1, 0x7f050003

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    :goto_24
    return-void

    .line 136
    :cond_25
    invoke-direct {p0, v0}, Lcom/seclover/ctf1/Main;->check(Ljava/lang/String;)Z

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 40
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "BuildConfig.DEBUGfalse"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/seclover/ctf1/Main;->setContentView(I)V

    .line 46
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/seclover/ctf1/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;

    .line 48
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/seclover/ctf1/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/seclover/ctf1/Main;->hint:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/seclover/ctf1/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    .local v1, "submit":Landroid/widget/Button;
    const-string v2, "ctf1"

    invoke-virtual {p0, v2, v0}, Lcom/seclover/ctf1/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;

    .line 51
    iget-object v2, p0, Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;

    const-string v3, "isEncrypted"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_41

    const/4 v0, 0x1

    .line 52
    .local v0, "isEncrypted":Z
    :cond_41
    if-eqz v0, :cond_5a

    .line 53
    iget-object v2, p0, Lcom/seclover/ctf1/Main;->hint:Landroid/widget/TextView;

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 61
    :goto_51
    new-instance v2, Lcom/seclover/ctf1/Main$1;

    invoke-direct {v2, p0, v1}, Lcom/seclover/ctf1/Main$1;-><init>(Lcom/seclover/ctf1/Main;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void

    .line 57
    :cond_5a
    iget-object v2, p0, Lcom/seclover/ctf1/Main;->hint:Landroid/widget/TextView;

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_51
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/seclover/ctf1/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 121
    .local v0, "id":I
    const v1, 0x7f080005

    if-ne v0, v1, :cond_b

    .line 122
    const/4 v1, 0x1

    .line 124
    :goto_a
    return v1

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_a
.end method
