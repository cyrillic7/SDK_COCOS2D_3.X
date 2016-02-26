.class Lcom/xiaomi/licensinglibrary/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->newSDKInstalled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "MiGameSDK"

    const-string v1, "New version SDK installed failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v0

    if-nez v0, :cond_86

    :try_start_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.licensinglibrary.authfileinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorServiceConn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$700(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MiGameSDK"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v1

    # invokes: Lcom/xiaomi/licensinglibrary/LicenseChecker;->handleServiceConnectionError(Lcom/xiaomi/gamecenter/sdk/ak;)V
    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/gamecenter/sdk/ak;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/g;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_80} :catch_81

    goto :goto_9

    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_86
    invoke-virtual {p0, v2}, Lcom/xiaomi/licensinglibrary/g;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/licensinglibrary/g;->sendEmptyMessage(I)Z

    goto/16 :goto_9
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstRunOnthisDevice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/al;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ag;->a()Lcom/xiaomi/gamecenter/sdk/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errcode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x138c

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "server_verify_success_newDevice_bind"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    :cond_44
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/al;->a(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method private a(ZI)V
    .registers 10

    const/16 v6, 0xfa5

    const/16 v5, 0xfa2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v0

    if-eqz v0, :cond_33

    :try_start_c
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ak;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->allow(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "local_verify_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v0, "mid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ag;->a()Lcom/xiaomi/gamecenter/sdk/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ag;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_noxiaomiaccount"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_6d} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6d} :catch_12c

    goto :goto_33

    :catch_6e
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "license_verify_remoteException"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    const-string v1, "MiGameSDK"

    const-string v2, "RemoteException in checkLicense call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v1

    # invokes: Lcom/xiaomi/licensinglibrary/LicenseChecker;->handleServiceConnectionError(Lcom/xiaomi/gamecenter/sdk/ak;)V
    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/gamecenter/sdk/ak;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    goto :goto_33

    :cond_92
    :try_start_92
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "mid"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a2
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/licensinglibrary/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "pkgName"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    iget-object v4, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mAppId:Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$1000(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "versionCode"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "validatorsdkvc"

    const/16 v1, 0x96

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_18d

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/ak;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_14d

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/i;-><init>(Lcom/xiaomi/licensinglibrary/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->allow(I)V
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_12a} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_12a} :catch_12c

    goto/16 :goto_33

    :catch_12c
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "license_verify_Exception"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/gamecenter/sdk/ak;
    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/gamecenter/sdk/ak;

    move-result-object v2

    # invokes: Lcom/xiaomi/licensinglibrary/LicenseChecker;->handleServiceConnectionError(Lcom/xiaomi/gamecenter/sdk/ak;)V
    invoke-static {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/gamecenter/sdk/ak;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_33

    :cond_14d
    :try_start_14d
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_failed"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    :cond_154
    if-eqz p1, :cond_1c8

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_1c8

    const-string v0, "MiGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle_Msg_RunChecks count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/g;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/licensinglibrary/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_33

    :cond_18d
    if-ne v1, v5, :cond_154

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xfa2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/g;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_networkerror"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/j;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/j;-><init>(Lcom/xiaomi/licensinglibrary/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0xfa2

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    goto/16 :goto_33

    :cond_1c8
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/k;-><init>(Lcom/xiaomi/licensinglibrary/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_1d6} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_1d6} :catch_12c

    goto/16 :goto_33
.end method

.method private b()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ag;->a()Lcom/xiaomi/gamecenter/sdk/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)I

    move-result v0

    const-string v1, "MiGameSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle_Msg_BUY_GAME ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buy_license_ret_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    if-eqz v0, :cond_4a

    const/16 v1, 0x138c

    if-ne v0, v1, :cond_6f

    :cond_4a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/g;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/g;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/l;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/l;-><init>(Lcom/xiaomi/licensinglibrary/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_6e
    return-void

    :cond_6f
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/g;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_6e

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_34

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_34

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_17
    invoke-direct {p0, v0, v2}, Lcom/xiaomi/licensinglibrary/g;->a(ZI)V

    goto :goto_5

    :pswitch_1b
    invoke-direct {p0}, Lcom/xiaomi/licensinglibrary/g;->a()V

    goto :goto_5

    :pswitch_1f
    invoke-direct {p0}, Lcom/xiaomi/licensinglibrary/g;->b()V

    goto :goto_5

    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/licensinglibrary/h;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/licensinglibrary/h;-><init>(Lcom/xiaomi/licensinglibrary/g;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_34
    move v0, v1

    goto :goto_17

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method
