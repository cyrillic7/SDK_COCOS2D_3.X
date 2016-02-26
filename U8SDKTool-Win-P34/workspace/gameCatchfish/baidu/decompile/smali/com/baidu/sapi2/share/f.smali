.class final Lcom/baidu/sapi2/share/f;
.super Ljava/lang/Object;
.source "FileStorage.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/io/File;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/share/f;->d:Z

    .line 36
    iput-object p1, p0, Lcom/baidu/sapi2/share/f;->a:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/baidu/sapi2/share/f;->b()V

    .line 38
    return-void
.end method

.method private b()V
    .registers 12

    .prologue
    .line 42
    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 43
    .local v2, "fileDir":Ljava/io/File;
    const/4 v6, 0x0

    .line 44
    .local v6, "oldFile":Ljava/io/File;
    if-eqz v2, :cond_4f

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "loginshare.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "oldFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    .end local v6    # "oldFile":Ljava/io/File;
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v6    # "oldFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android_sapi_loginshare"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    .line 54
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "oldFileName":Ljava/lang/String;
    :cond_4f
    if-eqz v6, :cond_9f

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9f

    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    if-eqz v8, :cond_9f

    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 55
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 83
    :cond_66
    :goto_66
    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    if-eqz v8, :cond_104

    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_104

    .line 84
    const/4 v4, 0x0

    .line 87
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_73
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_ed
    .catchall {:try_start_73 .. :try_end_7a} :catchall_fd

    .line 88
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_7a
    iget-object v8, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 89
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 90
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/baidu/sapi2/share/f;->a:Landroid/content/Context;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v9, v10}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_98} :catch_113
    .catchall {:try_start_7a .. :try_end_98} :catchall_110

    .line 95
    if-eqz v5, :cond_9d

    .line 96
    :try_start_9a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_ea

    :cond_9d
    move-object v4, v5

    .line 105
    .end local v0    # "buffer":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_9e
    :goto_9e
    return-void

    .line 60
    :cond_9f
    if-eqz v6, :cond_66

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 61
    const/4 v4, 0x0

    .line 64
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :try_start_a8
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ad} :catch_d3
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_e3

    .line 65
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :try_start_ad
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 66
    .restart local v0    # "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 67
    new-instance v8, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c3} :catch_119
    .catchall {:try_start_ad .. :try_end_c3} :catchall_116

    .line 72
    if-eqz v5, :cond_c8

    .line 73
    :try_start_c5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_d0

    :cond_c8
    move-object v4, v5

    .line 79
    .end local v0    # "buffer":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_c9
    :goto_c9
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/f;->a()Z

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_66

    .line 75
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_d0
    move-exception v8

    move-object v4, v5

    .line 78
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_c9

    .line 68
    .end local v0    # "buffer":[B
    :catch_d3
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :goto_d4
    :try_start_d4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_e3

    .line 72
    if-eqz v4, :cond_c9

    .line 73
    :try_start_dd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_c9

    .line 75
    :catch_e1
    move-exception v8

    goto :goto_c9

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_e3
    move-exception v8

    .line 72
    :goto_e4
    if-eqz v4, :cond_e9

    .line 73
    :try_start_e6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_10c

    .line 77
    :cond_e9
    :goto_e9
    throw v8

    .line 98
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_ea
    move-exception v8

    move-object v4, v5

    .line 101
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_9e

    .line 91
    .end local v0    # "buffer":[B
    :catch_ed
    move-exception v1

    .line 92
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_ee
    :try_start_ee
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_fd

    .line 95
    if-eqz v4, :cond_9e

    .line 96
    :try_start_f7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_9e

    .line 98
    :catch_fb
    move-exception v8

    goto :goto_9e

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_fd
    move-exception v8

    .line 95
    :goto_fe
    if-eqz v4, :cond_103

    .line 96
    :try_start_100
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_10e

    .line 100
    :cond_103
    :goto_103
    throw v8

    .line 103
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_104
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;

    goto :goto_9e

    .line 75
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_10c
    move-exception v9

    goto :goto_e9

    .line 98
    :catch_10e
    move-exception v9

    goto :goto_103

    .line 94
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_110
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_fe

    .line 91
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_113
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_ee

    .line 71
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_116
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_e4

    .line 68
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_119
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_d4
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    iget-boolean v5, p0, Lcom/baidu/sapi2/share/f;->d:Z

    if-nez v5, :cond_7

    .line 134
    :cond_6
    :goto_6
    return v3

    .line 116
    :cond_7
    const/4 v1, 0x0

    .line 118
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_8
    new-instance v2, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/baidu/sapi2/share/f;->c:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_2c
    .catchall {:try_start_8 .. :try_end_f} :catchall_37

    .line 119
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_f
    iget-object v5, p0, Lcom/baidu/sapi2/share/f;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/share/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 121
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/sapi2/share/f;->d:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_45
    .catchall {:try_start_f .. :try_end_24} :catchall_42

    .line 127
    if-eqz v2, :cond_6

    .line 128
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 130
    :catch_2a
    move-exception v4

    goto :goto_6

    .line 123
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_2c
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :goto_2d
    :try_start_2d
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_37

    .line 127
    if-eqz v1, :cond_35

    .line 128
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3e

    :cond_35
    :goto_35
    move v3, v4

    .line 134
    goto :goto_6

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v3

    .line 127
    :goto_38
    if-eqz v1, :cond_3d

    .line 128
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_40

    .line 132
    :cond_3d
    :goto_3d
    throw v3

    .line 130
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v3

    goto :goto_35

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_40
    move-exception v4

    goto :goto_3d

    .line 126
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_42
    move-exception v3

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_38

    .line 123
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_45
    move-exception v0

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2d
.end method
