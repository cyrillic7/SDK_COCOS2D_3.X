.class Lcom/tencent/android/tpush/stat/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/stat/f;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/stat/p;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/stat/p;)V
    .registers 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/q;->a:Lcom/tencent/android/tpush/stat/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 589
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->c()V

    .line 590
    invoke-static {}, Lcom/tencent/android/tpush/stat/t;->b()Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/t;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->e()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 593
    invoke-static {}, Lcom/tencent/android/tpush/stat/t;->b()Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/t;->a(I)V

    .line 599
    :cond_1c
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 603
    invoke-static {}, Lcom/tencent/android/tpush/stat/j;->d()V

    .line 604
    return-void
.end method
