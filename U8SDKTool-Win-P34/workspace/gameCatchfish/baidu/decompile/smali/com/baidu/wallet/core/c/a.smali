.class public Lcom/baidu/wallet/core/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/c/a$b;,
        Lcom/baidu/wallet/core/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/wallet/core/c/a;->b:I

    iput p1, p0, Lcom/baidu/wallet/core/c/a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/core/c/a;->b:I

    return-void
.end method

.method public a(Lcom/baidu/wallet/core/c/a$b;)V
    .registers 5

    iget v0, p1, Lcom/baidu/wallet/core/c/a$b;->a:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/baidu/wallet/core/c/a$b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/baidu/wallet/core/c/a$b;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public b(I)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/baidu/wallet/core/c/a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a$b;

    iget v2, v0, Lcom/baidu/wallet/core/c/a$b;->c:I

    if-ne v2, p1, :cond_17

    iget v1, v0, Lcom/baidu/wallet/core/c/a$b;->b:I

    iput v1, p0, Lcom/baidu/wallet/core/c/a;->b:I

    iget-object v0, v0, Lcom/baidu/wallet/core/c/a$b;->d:Lcom/baidu/wallet/core/c/a$a;

    invoke-interface {v0}, Lcom/baidu/wallet/core/c/a$a;->a()V

    goto :goto_12
.end method
