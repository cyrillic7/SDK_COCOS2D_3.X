.class final Lcom/tencent/beacon/d/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_4

    .line 114
    :cond_3
    :goto_3
    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 108
    instance-of v1, p1, Lcom/tencent/beacon/d/b;

    if-eqz v1, :cond_3

    .line 109
    check-cast p1, Lcom/tencent/beacon/d/b;

    .line 110
    iget v1, p1, Lcom/tencent/beacon/d/b;->a:I

    iget v2, p0, Lcom/tencent/beacon/d/b;->a:I

    if-ne v1, v2, :cond_3

    .line 111
    const/4 v0, 0x1

    goto :goto_3
.end method
