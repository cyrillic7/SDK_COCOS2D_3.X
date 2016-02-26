.class Lcom/xiaomi/licensinglibrary/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/c;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/e;->a:Lcom/xiaomi/licensinglibrary/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/e;->a:Lcom/xiaomi/licensinglibrary/c;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->dontAllow(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/e;->a:Lcom/xiaomi/licensinglibrary/c;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "buy_license_confirm_canceled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    return-void
.end method
