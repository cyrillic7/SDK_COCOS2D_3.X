.class Lcom/xiaomi/licensinglibrary/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {p2}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v1

    # setter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$102(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/ILicenseService;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/licensinglibrary/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/g;->removeMessages(I)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/g;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;
    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$102(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/ILicenseService;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mChecking:Z
    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$302(Lcom/xiaomi/licensinglibrary/LicenseChecker;Z)Z

    return-void
.end method
