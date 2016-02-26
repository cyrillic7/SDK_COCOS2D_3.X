.class Lcom/xiaomi/licensinglibrary/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/c;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/c;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "buy_license_begin"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/c;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/licensinglibrary/g;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/c;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/g;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/licensinglibrary/g;->sendEmptyMessage(I)Z

    return-void
.end method
