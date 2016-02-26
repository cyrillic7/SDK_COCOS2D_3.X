.class final Lcom/meizu/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/a/a/a;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/a/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/a/a/b;->a:Lcom/meizu/a/a/a;

    iput p2, p0, Lcom/meizu/a/a/b;->b:I

    iput-object p3, p0, Lcom/meizu/a/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/a/a/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/a/a/b;->e:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/a/a/b;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/meizu/a/a/b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/meizu/a/a/b;->a:Lcom/meizu/a/a/a;

    iget-object v1, p0, Lcom/meizu/a/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/a/a/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/a/a/b;->e:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/a/a/b;->b:I

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/meizu/a/a/a;->a(Lcom/meizu/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    :cond_19
    return-void
.end method
