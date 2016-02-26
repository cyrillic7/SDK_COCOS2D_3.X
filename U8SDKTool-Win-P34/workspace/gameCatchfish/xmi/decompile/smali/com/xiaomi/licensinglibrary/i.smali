.class Lcom/xiaomi/licensinglibrary/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/g;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/i;->a:Lcom/xiaomi/licensinglibrary/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/i;->a:Lcom/xiaomi/licensinglibrary/g;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/c;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/licensinglibrary/c;->a()V

    return-void
.end method
