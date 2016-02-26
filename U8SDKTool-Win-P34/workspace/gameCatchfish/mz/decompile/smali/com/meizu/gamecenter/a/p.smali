.class final Lcom/meizu/gamecenter/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/l;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/l;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/p;->a:Lcom/meizu/gamecenter/a/l;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/meizu/gamecenter/a/p;->a:Lcom/meizu/gamecenter/a/l;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/j;->a()V

    .line 85
    return-void
.end method
