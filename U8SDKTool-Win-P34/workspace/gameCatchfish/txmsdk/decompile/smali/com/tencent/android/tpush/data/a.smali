.class public Lcom/tencent/android/tpush/data/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/data/a;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    if-eqz p1, :cond_25

    iget-object v1, p1, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 60
    iget-object v1, p0, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_26

    .line 62
    iget v2, p0, Lcom/tencent/android/tpush/data/a;->b:I

    iget v3, p1, Lcom/tencent/android/tpush/data/a;->b:I

    if-ne v2, v3, :cond_24

    const/4 v0, 0x1

    :cond_24
    and-int/2addr v0, v1

    .line 68
    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 37
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_34

    array-length v0, v1

    if-lez v0, :cond_34

    .line 39
    iget-object v0, p0, Lcom/tencent/android/tpush/data/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    if-eqz v0, :cond_33

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_33

    .line 41
    iget v2, p0, Lcom/tencent/android/tpush/data/a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 48
    :cond_33
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method
