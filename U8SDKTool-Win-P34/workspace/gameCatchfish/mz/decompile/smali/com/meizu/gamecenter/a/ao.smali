.class final Lcom/meizu/gamecenter/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/an;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/an;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ao;->a:Lcom/meizu/gamecenter/a/an;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/ao;->b:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ao;->a:Lcom/meizu/gamecenter/a/an;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/an;->a(Lcom/meizu/gamecenter/a/an;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ao;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->g(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ao;->a:Lcom/meizu/gamecenter/a/an;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/an;->a(Lcom/meizu/gamecenter/a/an;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->d(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/meizu/gamecenter/a/ao;->a:Lcom/meizu/gamecenter/a/an;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/an;->a(Lcom/meizu/gamecenter/a/an;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/gamecenter/a/ai;->e(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/meizu/gamecenter/a/ao;->a:Lcom/meizu/gamecenter/a/an;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/an;->a(Lcom/meizu/gamecenter/a/an;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/gamecenter/a/ai;->f(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 326
    return-void
.end method
