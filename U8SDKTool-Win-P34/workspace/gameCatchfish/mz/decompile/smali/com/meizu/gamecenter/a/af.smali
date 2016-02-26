.class final Lcom/meizu/gamecenter/a/af;
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
    iput-object p1, p0, Lcom/meizu/gamecenter/a/af;->a:Lcom/meizu/gamecenter/a/ae;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/app/Activity;Ljava/lang/Object;Z)V
    .registers 7

    .prologue
    .line 1
    check-cast p2, Lcom/meizu/gamecenter/sdk/MzLoginListener;

    if-eqz p3, :cond_13

    new-instance v0, Lcom/meizu/gamecenter/a/ac;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/af;->a:Lcom/meizu/gamecenter/a/ae;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ae;->a(Lcom/meizu/gamecenter/a/ae;)Lcom/meizu/gamecenter/a/s;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/meizu/gamecenter/a/ac;-><init>(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;Lcom/meizu/gamecenter/a/s;)V

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/ac;->b()V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "\u7528\u6237\u53d6\u6d88"

    invoke-interface {p2, v0, v1, v2}, Lcom/meizu/gamecenter/sdk/MzLoginListener;->onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V

    goto :goto_12
.end method
