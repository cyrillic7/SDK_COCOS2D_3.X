.class final Lcom/meizu/gamecenter/a/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/al;->a:Lcom/meizu/gamecenter/a/ai;

    iput-boolean p2, p0, Lcom/meizu/gamecenter/a/al;->b:Z

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 586
    iget-object v0, p0, Lcom/meizu/gamecenter/a/al;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->e(Lcom/meizu/gamecenter/a/ai;)Lcom/meizu/filetransfer/b;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/al;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/al;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v2}, Lcom/meizu/gamecenter/a/ai;->f(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/gamecenter/a/al;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/filetransfer/b;->a(Landroid/app/Activity;Ljava/lang/Object;Z)V

    .line 587
    return-void
.end method
