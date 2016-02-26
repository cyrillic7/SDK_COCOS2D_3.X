.class Lcom/tencent/android/tpush/service/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    .line 230
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/tencent/android/tpush/service/z;->b:F

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/z;->c:J

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/service/z;)I
    .registers 4

    .prologue
    .line 238
    iget v0, p0, Lcom/tencent/android/tpush/service/z;->b:F

    iget v1, p1, Lcom/tencent/android/tpush/service/z;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 239
    const/4 v0, -0x1

    .line 243
    :goto_9
    return v0

    .line 240
    :cond_a
    iget v0, p0, Lcom/tencent/android/tpush/service/z;->b:F

    iget v1, p1, Lcom/tencent/android/tpush/service/z;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 241
    const/4 v0, 0x1

    goto :goto_9

    .line 243
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 228
    check-cast p1, Lcom/tencent/android/tpush/service/z;

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/z;->a(Lcom/tencent/android/tpush/service/z;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v1, "pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/z;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/service/z;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
