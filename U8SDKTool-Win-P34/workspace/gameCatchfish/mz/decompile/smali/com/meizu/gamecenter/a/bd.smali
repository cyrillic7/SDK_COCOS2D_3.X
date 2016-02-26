.class final Lcom/meizu/gamecenter/a/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/bc;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/bc;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/bd;->a:Lcom/meizu/gamecenter/a/bc;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bd;->a:Lcom/meizu/gamecenter/a/bc;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/bc;->a(Lcom/meizu/gamecenter/a/bc;)V

    .line 606
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bd;->a:Lcom/meizu/gamecenter/a/bc;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/bc;->b(Lcom/meizu/gamecenter/a/bc;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    .line 607
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bd;->a:Lcom/meizu/gamecenter/a/bc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/a/bc;->cancel(Z)Z

    .line 608
    return-void
.end method
