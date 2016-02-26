.class final Lcom/meizu/gamecenter/a/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/av;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/av;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ay;->a:Lcom/meizu/gamecenter/a/av;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ay;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->d(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ai;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u8def\u5f84\u521b\u5efa\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 516
    return-void
.end method
