.class final Lcom/meizu/gamecenter/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/f;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/f;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/h;->a:Lcom/meizu/gamecenter/a/f;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/gamecenter/a/h;->a:Lcom/meizu/gamecenter/a/f;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/f;->a(Lcom/meizu/gamecenter/a/f;)Lcom/meizu/gamecenter/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->d(Lcom/meizu/gamecenter/a/a;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/gamecenter/a/h;->a:Lcom/meizu/gamecenter/a/f;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/f;->a(Lcom/meizu/gamecenter/a/f;)Lcom/meizu/gamecenter/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->e(Lcom/meizu/gamecenter/a/a;)V

    .line 121
    return-void
.end method
