.class final Lcom/meizu/gamecenter/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/m;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/m;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/o;->a:Lcom/meizu/gamecenter/a/m;

    iput p2, p0, Lcom/meizu/gamecenter/a/o;->b:I

    iput-object p3, p0, Lcom/meizu/gamecenter/a/o;->c:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/gamecenter/a/o;->a:Lcom/meizu/gamecenter/a/m;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/m;->a(Lcom/meizu/gamecenter/a/m;)Lcom/meizu/gamecenter/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v0

    iget v1, p0, Lcom/meizu/gamecenter/a/o;->b:I

    iget-object v2, p0, Lcom/meizu/gamecenter/a/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/gamecenter/a/j;->a(ILjava/lang/String;)V

    .line 68
    return-void
.end method
