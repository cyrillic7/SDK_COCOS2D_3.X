.class final Lcom/meizu/gamecenter/a/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/av;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/av;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/aw;->a:Lcom/meizu/gamecenter/a/av;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/meizu/gamecenter/a/aw;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->a(Lcom/meizu/gamecenter/a/av;)V

    .line 478
    iget-object v0, p0, Lcom/meizu/gamecenter/a/aw;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->b(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ah;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 479
    iget-object v0, p0, Lcom/meizu/gamecenter/a/aw;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->b(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/ah;->a()V

    .line 481
    :cond_16
    return-void
.end method
