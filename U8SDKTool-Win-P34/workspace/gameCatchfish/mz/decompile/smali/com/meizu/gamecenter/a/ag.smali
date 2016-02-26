.class final Lcom/meizu/gamecenter/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/filetransfer/b;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ae;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ae;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ag;->a:Lcom/meizu/gamecenter/a/ae;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/app/Activity;Ljava/lang/Object;Z)V
    .registers 8

    .prologue
    .line 1
    check-cast p2, Landroid/util/Pair;

    if-eqz p3, :cond_1b

    new-instance v2, Lcom/meizu/gamecenter/a/ad;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/gamecenter/sdk/MzPayListener;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ag;->a:Lcom/meizu/gamecenter/a/ae;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ae;->a(Lcom/meizu/gamecenter/a/ae;)Lcom/meizu/gamecenter/a/s;

    move-result-object v3

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-direct {v2, p1, v0, v3, v1}, Lcom/meizu/gamecenter/a/ad;-><init>(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzPayListener;Lcom/meizu/gamecenter/a/s;Lcom/meizu/gamecenter/sdk/MzBuyInfo;)V

    invoke-virtual {v2}, Lcom/meizu/gamecenter/a/ad;->b()V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/gamecenter/sdk/MzPayListener;

    const/4 v2, 0x2

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    const-string v3, "\u7528\u6237\u53d6\u6d88"

    invoke-interface {v0, v2, v1, v3}, Lcom/meizu/gamecenter/sdk/MzPayListener;->onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V

    goto :goto_1a
.end method
