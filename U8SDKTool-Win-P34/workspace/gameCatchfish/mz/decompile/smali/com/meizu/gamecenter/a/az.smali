.class final Lcom/meizu/gamecenter/a/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/av;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/av;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/az;->a:Lcom/meizu/gamecenter/a/av;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/az;->b:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/meizu/gamecenter/a/az;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->d(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/az;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 533
    return-void
.end method
