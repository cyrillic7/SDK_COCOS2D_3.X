.class public Lcom/tencent/tmapkupdatesdk/internal/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v3, 0x0

    .line 27
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10d
    .catchall {:try_start_4 .. :try_end_b} :catchall_a5

    .line 28
    :try_start_b
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_112
    .catchall {:try_start_b .. :try_end_15} :catchall_ff

    move-result v4

    if-nez v4, :cond_28

    .line 71
    if-eqz v2, :cond_1d

    .line 73
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_d1

    .line 79
    :cond_1d
    :goto_1d
    if-eqz v2, :cond_22

    .line 81
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_d7

    .line 87
    :cond_22
    :goto_22
    if-eqz v1, :cond_27

    .line 89
    :try_start_24
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_dd

    .line 97
    :cond_27
    :goto_27
    return-void

    .line 34
    :cond_28
    :try_start_28
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_72

    .line 36
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_39} :catch_112
    .catchall {:try_start_28 .. :try_end_39} :catchall_ff

    .line 37
    :try_start_39
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_46} :catch_116
    .catchall {:try_start_39 .. :try_end_46} :catchall_102

    .line 39
    const/16 v0, 0x400

    :try_start_48
    new-array v0, v0, [B

    .line 41
    :goto_4a
    const/4 v2, 0x0

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v6, :cond_e1

    .line 42
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_56} :catch_57
    .catchall {:try_start_48 .. :try_end_56} :catchall_104

    goto :goto_4a

    .line 67
    :catch_57
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 69
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_10a

    .line 71
    if-eqz v3, :cond_62

    .line 73
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_c7

    .line 79
    :cond_62
    :goto_62
    if-eqz v2, :cond_67

    .line 81
    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_cc

    .line 87
    :cond_67
    :goto_67
    if-eqz v1, :cond_27

    .line 89
    :try_start_69
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_27

    .line 90
    :catch_6d
    move-exception v0

    .line 92
    :goto_6e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 47
    :cond_72
    :try_start_72
    const-string v0, "META-INF\\MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_df

    .line 49
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_83} :catch_112
    .catchall {:try_start_72 .. :try_end_83} :catchall_ff

    .line 50
    :try_start_83
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/g;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_90} :catch_11a
    .catchall {:try_start_83 .. :try_end_90} :catchall_102

    .line 52
    const/16 v0, 0x400

    :try_start_92
    new-array v0, v0, [B

    .line 54
    :goto_94
    const/4 v2, 0x0

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v6, :cond_e1

    .line 55
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a0} :catch_a1
    .catchall {:try_start_92 .. :try_end_a0} :catchall_107

    goto :goto_94

    .line 67
    :catch_a1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_5a

    .line 71
    :catchall_a5
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    :goto_a8
    if-eqz v4, :cond_ad

    .line 73
    :try_start_aa
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b8

    .line 79
    :cond_ad
    :goto_ad
    if-eqz v2, :cond_b2

    .line 81
    :try_start_af
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_bd

    .line 87
    :cond_b2
    :goto_b2
    if-eqz v1, :cond_b7

    .line 89
    :try_start_b4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_c2

    .line 71
    :cond_b7
    :goto_b7
    throw v0

    .line 74
    :catch_b8
    move-exception v3

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ad

    .line 82
    :catch_bd
    move-exception v2

    .line 84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    .line 90
    :catch_c2
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    .line 74
    :catch_c7
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 82
    :catch_cc
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 74
    :catch_d1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1d

    .line 82
    :catch_d7
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    .line 90
    :catch_dd
    move-exception v0

    goto :goto_6e

    :cond_df
    move-object v3, v2

    move-object v4, v2

    .line 71
    :cond_e1
    if-eqz v4, :cond_e6

    .line 73
    :try_start_e3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_f5

    .line 79
    :cond_e6
    :goto_e6
    if-eqz v3, :cond_eb

    .line 81
    :try_start_e8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_fa

    .line 87
    :cond_eb
    :goto_eb
    if-eqz v1, :cond_27

    .line 89
    :try_start_ed
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    goto/16 :goto_27

    .line 90
    :catch_f2
    move-exception v0

    goto/16 :goto_6e

    .line 74
    :catch_f5
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6

    .line 82
    :catch_fa
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_eb

    .line 71
    :catchall_ff
    move-exception v0

    move-object v4, v2

    goto :goto_a8

    :catchall_102
    move-exception v0

    goto :goto_a8

    :catchall_104
    move-exception v0

    move-object v2, v3

    goto :goto_a8

    :catchall_107
    move-exception v0

    move-object v2, v3

    goto :goto_a8

    :catchall_10a
    move-exception v0

    move-object v4, v3

    goto :goto_a8

    .line 67
    :catch_10d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_5a

    :catch_112
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5a

    :catch_116
    move-exception v0

    move-object v3, v4

    goto/16 :goto_5a

    :catch_11a
    move-exception v0

    move-object v3, v4

    goto/16 :goto_5a
.end method
