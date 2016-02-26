.class Lcom/xiaomi/gamecenter/sdk/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/os/Looper;ZLandroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-boolean p3, p0, Lcom/xiaomi/gamecenter/sdk/h;->a:Z

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/h;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5\'\u5c0f\u7c73\u6e38\u620f\u4e2d\u5fc3\u798f\u5229\u52a9\u624b\'\uff0c\u5b89\u88c5\u540e\u624d\u53ef\u7528\u5c0f\u7c73\u8d26\u6237\u767b\u5f55\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\u3002\u4ec5\u9700\u5b89\u88c5\u4e00\u6b21\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/h;->a:Z

    if-eqz v1, :cond_44

    const-string v0, "\u5f53\u524d\u6709\u65b0\u7248\u672c\u7684\'\u5c0f\u7c73\u6e38\u620f\u4e2d\u5fc3\u798f\u5229\u52a9\u624b\'\uff0c\u662f\u5426\u5b89\u88c5?"

    move-object v1, v0

    :goto_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/h;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u63d0\u793a"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/k;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/k;-><init>(Lcom/xiaomi/gamecenter/sdk/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/j;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/j;-><init>(Lcom/xiaomi/gamecenter/sdk/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/i;-><init>(Lcom/xiaomi/gamecenter/sdk/h;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_44
    move-object v1, v0

    goto :goto_9
.end method
