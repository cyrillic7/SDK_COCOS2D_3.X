.class public Lcom/alipay/sdk/sys/GlobalContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/sys/GlobalContext;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/sdk/data/MspConfig;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/GlobalContext;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/alipay/sdk/sys/GlobalContext;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/GlobalContext;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    .line 38
    :cond_b
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 85
    const-string v2, ""

    .line 86
    const/4 v0, 0x0

    .line 88
    :try_start_3
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_35
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    move-result-object v1

    .line 93
    :try_start_10
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_4c
    .catchall {:try_start_10 .. :try_end_25} :catchall_4a

    move-result-object v0

    .line 100
    :try_start_26
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_4f
    .catchall {:try_start_26 .. :try_end_31} :catchall_4a

    .line 107
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_46

    .line 112
    :goto_34
    return-object v0

    :catch_35
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 107
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_34

    .line 110
    :catch_3c
    move-exception v1

    goto :goto_34

    .line 106
    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 107
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_48

    .line 109
    :goto_45
    throw v0

    .line 110
    :catch_46
    move-exception v1

    goto :goto_34

    :catch_48
    move-exception v1

    goto :goto_45

    .line 106
    :catchall_4a
    move-exception v0

    goto :goto_42

    :catch_4c
    move-exception v0

    move-object v0, v2

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 130
    const/16 v0, 0x41

    new-array v4, v0, [C

    fill-array-data v4, :array_28

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 138
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_f
    if-ge v3, v6, :cond_26

    .line 140
    aget-char v7, v5, v3

    .line 141
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_16
    if-ge v1, v8, :cond_20

    .line 142
    aget-char v9, v4, v1

    if-ne v7, v9, :cond_1d

    .line 143
    const/4 v0, 0x1

    .line 141
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 145
    :cond_20
    if-eqz v0, :cond_26

    .line 146
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    .line 148
    :cond_26
    return v0

    .line 130
    nop

    :array_28
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
        0x3ds
    .end array-data
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const-string v2, "/system/sbin/"

    aput-object v2, v3, v4

    const-string v2, "/sbin/"

    aput-object v2, v3, v5

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    .line 65
    :goto_1d
    :try_start_1d
    array-length v4, v3

    if-ge v2, v4, :cond_6e

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 69
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "-l"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 70
    invoke-static {v2}, Lcom/alipay/sdk/sys/GlobalContext;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_65} :catch_6d

    move-result v2

    if-ne v3, v2, :cond_69

    :cond_68
    move v0, v1

    .line 80
    :cond_69
    :goto_69
    return v0

    .line 65
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_6d
    move-exception v0

    :cond_6e
    move v0, v1

    .line 80
    goto :goto_69
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 118
    invoke-static {}, Lcom/alipay/sdk/util/Utils;->d()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Lcom/alipay/sdk/data/MspConfig;

    .line 49
    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/alipay/sdk/data/MspConfig;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Lcom/alipay/sdk/data/MspConfig;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const/16 v0, 0x41

    new-array v5, v0, [C

    fill-array-data v5, :array_3a

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v3

    move v0, v3

    :goto_1b
    if-ge v4, v7, :cond_32

    aget-char v8, v6, v4

    array-length v9, v5

    move v2, v3

    move v0, v3

    :goto_22
    if-ge v2, v9, :cond_2c

    aget-char v10, v5, v2

    if-ne v8, v10, :cond_29

    const/4 v0, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2c
    if-eqz v0, :cond_32

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1b

    :cond_32
    if-eqz v0, :cond_36

    move-object v0, v1

    .line 126
    :goto_35
    return-object v0

    :cond_36
    const-string v0, ""

    goto :goto_35

    .line 124
    nop

    :array_3a
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
        0x3ds
    .end array-data
.end method
