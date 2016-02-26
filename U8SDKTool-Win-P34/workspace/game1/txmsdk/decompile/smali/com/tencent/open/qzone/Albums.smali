.class public Lcom/tencent/open/qzone/Albums;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/qzone/Albums$AlbumSecurity;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/open/qzone/Albums$AlbumSecurity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 13

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/tencent/open/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    .line 176
    const-string v0, "albumname"

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "albumdesc"

    if-nez p2, :cond_13

    const-string p2, ""

    :cond_13
    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "priv"

    if-nez p3, :cond_48

    sget-object v0, Lcom/tencent/open/qzone/Albums$AlbumSecurity;->publicToAll:Lcom/tencent/open/qzone/Albums$AlbumSecurity;

    invoke-virtual {v0}, Lcom/tencent/open/qzone/Albums$AlbumSecurity;->getSecurity()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "question"

    if-nez p4, :cond_29

    const-string p4, ""

    :cond_29
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "answer"

    if-nez p5, :cond_32

    const-string p5, ""

    :cond_32
    invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v5, p0, p6}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/open/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "photo/add_album"

    const-string v4, "POST"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 184
    return-void

    .line 178
    :cond_48
    invoke-virtual {p3}, Lcom/tencent/open/qzone/Albums$AlbumSecurity;->getSecurity()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public listAlbum(Lcom/tencent/tauth/IUiListener;)V
    .registers 8

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/tencent/open/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    .line 71
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/open/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "photo/list_album"

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 75
    return-void
.end method

.method public listPhotos(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 9

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/tencent/open/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    .line 89
    const-string v0, "albumid"

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v5, p0, p2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/open/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "photo/list_photo"

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 93
    return-void
.end method

.method public uploadPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v5, p0, p6}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 116
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_bd
    .catchall {:try_start_6 .. :try_end_b} :catchall_9d

    .line 117
    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_c1
    .catchall {:try_start_b .. :try_end_10} :catchall_b5

    .line 118
    const/16 v0, 0x400

    :try_start_12
    new-array v0, v0, [B

    .line 120
    :goto_14
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_30

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_b8

    goto :goto_14

    .line 124
    :catch_20
    move-exception v0

    move-object v2, v3

    .line 125
    :goto_22
    :try_start_22
    invoke-virtual {v5, v0}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->onIOException(Ljava/io/IOException;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_ba

    .line 128
    if-eqz v1, :cond_2a

    .line 130
    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_93

    .line 136
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_2f

    .line 138
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_98

    .line 160
    :cond_2f
    :goto_2f
    return-void

    .line 123
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_20
    .catchall {:try_start_30 .. :try_end_33} :catchall_b8

    move-result-object v0

    .line 128
    if-eqz v1, :cond_39

    .line 130
    :try_start_36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_89

    .line 136
    :cond_39
    :goto_39
    if-eqz v3, :cond_3e

    .line 138
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_8e

    .line 146
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/tencent/open/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;

    move-result-object v3

    .line 147
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v2, "picture"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 150
    const-string v0, "photodesc"

    if-nez p2, :cond_52

    const-string p2, ""

    :cond_52
    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz p3, :cond_69

    .line 153
    const-string v0, "albumid"

    if-nez p3, :cond_66

    const-string p3, ""

    :cond_66
    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_69
    const-string v0, "x"

    if-nez p4, :cond_6f

    const-string p4, ""

    :cond_6f
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "y"

    if-nez p5, :cond_78

    const-string p5, ""

    :cond_78
    invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/open/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "photo/upload_pic"

    const-string v4, "POST"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    goto :goto_2f

    .line 131
    :catch_89
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 139
    :catch_8e
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 131
    :catch_93
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 139
    :catch_98
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 128
    :catchall_9d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_a0
    if-eqz v1, :cond_a5

    .line 130
    :try_start_a2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ab

    .line 136
    :cond_a5
    :goto_a5
    if-eqz v3, :cond_aa

    .line 138
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_b0

    .line 142
    :cond_aa
    :goto_aa
    throw v0

    .line 131
    :catch_ab
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 139
    :catch_b0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    .line 128
    :catchall_b5
    move-exception v0

    move-object v1, v2

    goto :goto_a0

    :catchall_b8
    move-exception v0

    goto :goto_a0

    :catchall_ba
    move-exception v0

    move-object v3, v2

    goto :goto_a0

    .line 124
    :catch_bd
    move-exception v0

    move-object v1, v2

    goto/16 :goto_22

    :catch_c1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_22
.end method
