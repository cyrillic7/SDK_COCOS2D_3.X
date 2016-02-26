.class final Lcom/meizu/gamecenter/a/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/an;->b:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/an;)Lcom/meizu/gamecenter/a/ai;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {}, Lcom/meizu/gamecenter/a/ai;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 307
    iget-object v0, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;Z)V

    .line 309
    iget-object v0, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->d(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1, v0}, Lcom/meizu/gamecenter/a/ai;->e(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/meizu/gamecenter/a/an;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1, v0}, Lcom/meizu/gamecenter/a/ai;->f(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 328
    :goto_1e
    return-void

    .line 315
    :cond_1f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/gamecenter/a/ao;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/an;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/meizu/gamecenter/a/ao;-><init>(Lcom/meizu/gamecenter/a/an;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1e
.end method
