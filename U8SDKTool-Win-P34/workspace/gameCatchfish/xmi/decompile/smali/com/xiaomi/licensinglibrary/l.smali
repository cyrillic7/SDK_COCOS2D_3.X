.class Lcom/xiaomi/licensinglibrary/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/g;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/l;->a:Lcom/xiaomi/licensinglibrary/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/l;->a:Lcom/xiaomi/licensinglibrary/g;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/c;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/l;->a:Lcom/xiaomi/licensinglibrary/g;

    iget-object v1, v1, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u67e5\u8be2\u8d2d\u4e70\u7ed3\u679c"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/licensinglibrary/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
