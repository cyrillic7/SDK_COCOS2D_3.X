.class Lcom/tencent/tmdownloader/internal/a/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/tencent/tmdownloader/internal/a/h;


# direct methods
.method constructor <init>(Lcom/tencent/tmdownloader/internal/a/h;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/i;->a:Lcom/tencent/tmdownloader/internal/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tmdownloader/internal/a/g;Lcom/tencent/tmdownloader/internal/a/g;)I
    .registers 5

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/tmdownloader/internal/a/g;->d()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 27
    const/4 v0, 0x1

    .line 34
    :goto_b
    return v0

    .line 30
    :cond_c
    invoke-virtual {p1}, Lcom/tencent/tmdownloader/internal/a/g;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/tmdownloader/internal/a/g;->d()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 31
    const/4 v0, 0x0

    goto :goto_b

    .line 34
    :cond_18
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 23
    check-cast p1, Lcom/tencent/tmdownloader/internal/a/g;

    check-cast p2, Lcom/tencent/tmdownloader/internal/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/i;->a(Lcom/tencent/tmdownloader/internal/a/g;Lcom/tencent/tmdownloader/internal/a/g;)I

    move-result v0

    return v0
.end method
