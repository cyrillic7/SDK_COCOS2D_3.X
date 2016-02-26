.class public Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
.super Ljava/lang/Object;
.source "UnipayPlugTools.java"


# instance fields
.field private DOWNLOAD_URL_RELEASE:Ljava/lang/String;

.field private DOWNLOAD_URL_SANDBOX:Ljava/lang/String;

.field private DownLoadURL:Ljava/lang/String;

.field public LOG_TAG:Ljava/lang/String;

.field private SDK_SUPPORT_MIN_VERSION:I

.field private context:Landroid/content/Context;

.field private installed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->SDK_SUPPORT_MIN_VERSION:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    .line 43
    const-string v0, "TencentUnipay"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->LOG_TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installed:Z

    .line 47
    const-string v0, "http://imgcache.qq.com/bossweb/midas/TencentUnipay.apk"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DOWNLOAD_URL_RELEASE:Ljava/lang/String;

    .line 49
    const-string v0, "http://imgcache.qq.com/bossweb/midas/unipay/test/apk_test/offline/TencentUnipay.apk"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DOWNLOAD_URL_SANDBOX:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DOWNLOAD_URL_RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DownLoadURL:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->intallTencentUnipayFromInternet()V

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;Z)V
    .registers 2

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installed:Z

    return-void
.end method

.method private intallTencentUnipayFromInternet()V
    .registers 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DownLoadURL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DownLoadURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_21
    return-void
.end method

.method public static invokeCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
    .registers 6
    .param p0, "response"    # Lcom/tencent/unipay/plugsdk/UnipayResponse;

    .prologue
    .line 346
    :try_start_0
    sget-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    if-eqz v1, :cond_a

    .line 349
    sget-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {v1, p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V

    .line 361
    :cond_9
    :goto_9
    return-void

    .line 351
    :cond_a
    sget-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    if-eqz v1, :cond_9

    .line 354
    sget-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    const-string v2, ""

    iget v3, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->UnipayNetServiceError(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_9

    .line 357
    :catch_1a
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method


# virtual methods
.method public checkUnipayAPP()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 137
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->isInstalledTencentUnipay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 139
    const/4 v1, 0x0

    .line 142
    .local v1, "is":Ljava/io/InputStream;
    :try_start_b
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/assets/TencentUnipay.apk"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_c2

    move-result-object v1

    .line 149
    :goto_17
    if-eqz v1, :cond_2e

    .line 152
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    const-string v4, "\u5b89\u88c5\u817e\u8baf\u5145\u503c\u4e0d\u8017\u6d41\u91cf\u3002"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    const-string v4, "TencentUnipay.apk"

    invoke-virtual {p0, v3, v4}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installTencentUnipayFromSDcard(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_2b
    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installed:Z

    return v3

    .line 158
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_2e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u5b89\u5168\u63d0\u793a"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const-string v3, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5\u817e\u8baf\u5145\u503c,\u8bf7\u5148\u4e0b\u8f7d\u5b89\u88c5"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 162
    const-string v3, "\u786e\u8ba4"

    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$1;

    invoke-direct {v4, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$1;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$2;

    invoke-direct {v4, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$2;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2b

    .line 192
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_5a
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->isHasHighVersionInAssets(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 194
    const/4 v1, 0x0

    .line 197
    .restart local v1    # "is":Ljava/io/InputStream;
    :try_start_63
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/assets/TencentUnipay.apk"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6e} :catch_c0

    move-result-object v1

    .line 202
    :goto_6f
    if-eqz v1, :cond_84

    .line 217
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    const-string v4, "\u5347\u7ea7\u817e\u8baf\u5145\u503c\u4e0d\u8017\u6d41\u91cf\u3002"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 218
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    const-string v4, "TencentUnipay.apk"

    invoke-virtual {p0, v3, v4}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installTencentUnipayFromSDcard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 222
    :cond_84
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installed:Z

    goto :goto_2b

    .line 227
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_87
    invoke-virtual {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->getInstalledAPKVersion()I

    move-result v2

    .line 228
    .local v2, "istalled_version":I
    iget v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->SDK_SUPPORT_MIN_VERSION:I

    if-le v3, v2, :cond_bc

    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u5b89\u5168\u63d0\u793a"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    const-string v3, "\u60a8\u9700\u8981\u66f4\u65b0\u817e\u8baf\u5145\u503c,\u8bf7\u5148\u4e0b\u8f7d\u66f4\u65b0"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 234
    const-string v3, "\u786e\u8ba4"

    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$3;

    invoke-direct {v4, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$3;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$4;

    invoke-direct {v4, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$4;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2b

    .line 263
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_bc
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->installed:Z

    goto/16 :goto_2b

    .line 199
    .end local v2    # "istalled_version":I
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_c0
    move-exception v3

    goto :goto_6f

    .line 144
    :catch_c2
    move-exception v3

    goto/16 :goto_17
.end method

.method public copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 277
    .local v0, "bRet":Z
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 279
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 281
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v6, v7, [B

    .line 284
    .local v6, "temp":[B
    const/4 v4, 0x0

    .line 285
    .local v4, "i":I
    :goto_1b
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2c

    .line 289
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 290
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 293
    const/4 v0, 0x1

    .line 300
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "temp":[B
    :goto_2b
    return v0

    .line 287
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "temp":[B
    :cond_2c
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_1b

    .line 295
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "temp":[B
    :catch_31
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method

.method public getInstalledAPKVersion()I
    .registers 6

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "curPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 368
    .local v1, "curVersionCode":I
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->isInstalledTencentUnipay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 372
    :try_start_a
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.unipay"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 373
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    .line 380
    :cond_19
    :goto_19
    return v1

    .line 375
    :catch_1a
    move-exception v2

    goto :goto_19
.end method

.method public installTencentUnipayFromSDcard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v7, "application/vnd.android.package-archive"

    .line 112
    .local v7, "type":Ljava/lang/String;
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/assets/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 114
    .local v5, "is":Ljava/io/InputStream;
    const/4 v8, 0x1

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 115
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 116
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 117
    .local v6, "len":I
    :goto_32
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_71

    .line 121
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 122
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_42} :catch_76

    .line 129
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    :goto_42
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void

    .line 119
    .end local v2    # "f":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    :cond_71
    const/4 v8, 0x0

    :try_start_72
    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_32

    .line 125
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    :catch_76
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method public isHasHighVersionInAssets(Landroid/content/Context;)Z
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, "versionCode":I
    const/4 v2, 0x0

    .line 309
    .local v2, "curVersionCode":I
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "path":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/TencentUnipayTemp.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "apkCachePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, "curPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_24
    const-string v11, "TencentUnipay.apk"

    invoke-virtual {p0, p1, v11, v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 316
    .local v4, "flag":Z
    if-eqz v4, :cond_47

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 319
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x1

    invoke-virtual {v5, v0, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 320
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.tencent.unipay"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 322
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_44} :catch_49

    .line 323
    if-le v8, v2, :cond_4b

    .line 338
    .end local v4    # "flag":Z
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_46
    return v9

    .restart local v4    # "flag":Z
    :cond_47
    move v9, v10

    .line 330
    goto :goto_46

    .line 333
    .end local v4    # "flag":Z
    :catch_49
    move-exception v3

    .line 335
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4b
    move v9, v10

    .line 338
    goto :goto_46
.end method

.method public isInstalledTencentUnipay(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v1, 0x0

    .line 64
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.unipay"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_11

    move-result-object v1

    .line 72
    :goto_d
    if-eqz v1, :cond_10

    .line 74
    const/4 v2, 0x1

    .line 77
    :cond_10
    return v2

    .line 66
    :catch_11
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 69
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->LOG_TAG:Ljava/lang/String;

    const-string v4, "com.tencent.unipay is not installed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setUrlForTest()V
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DOWNLOAD_URL_SANDBOX:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DownLoadURL:Ljava/lang/String;

    .line 90
    :goto_e
    return-void

    .line 88
    :cond_f
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DOWNLOAD_URL_RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->DownLoadURL:Ljava/lang/String;

    goto :goto_e
.end method
