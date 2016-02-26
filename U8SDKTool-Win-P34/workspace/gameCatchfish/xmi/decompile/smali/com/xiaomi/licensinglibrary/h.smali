.class Lcom/xiaomi/licensinglibrary/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/licensinglibrary/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/g;I)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/h;->b:Lcom/xiaomi/licensinglibrary/g;

    iput p2, p0, Lcom/xiaomi/licensinglibrary/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/h;->b:Lcom/xiaomi/licensinglibrary/g;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/g;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/c;
    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/c;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/licensinglibrary/h;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/c;->a(I)V

    return-void
.end method
