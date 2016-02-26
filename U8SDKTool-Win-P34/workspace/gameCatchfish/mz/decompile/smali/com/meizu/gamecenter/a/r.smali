.class final Lcom/meizu/gamecenter/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/j;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/j;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/r;->a:Lcom/meizu/gamecenter/a/j;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/gamecenter/a/r;->a:Lcom/meizu/gamecenter/a/j;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/j;->a()V

    .line 118
    return-void
.end method
