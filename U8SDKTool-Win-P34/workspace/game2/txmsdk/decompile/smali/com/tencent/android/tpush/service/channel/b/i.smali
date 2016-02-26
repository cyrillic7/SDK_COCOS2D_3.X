.class public abstract Lcom/tencent/android/tpush/service/channel/b/i;
.super Lcom/tencent/android/tpush/service/channel/b/f;
.source "ProGuard"


# static fields
.field static final synthetic o:Z


# instance fields
.field protected d:S

.field protected e:I

.field protected f:J

.field protected g:J

.field protected h:S

.field protected i:S

.field protected k:S

.field protected l:S

.field protected m:S

.field protected n:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/b/i;->o:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b/f;-><init>()V

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    .line 49
    return-void
.end method


# virtual methods
.method public a(S)V
    .registers 2

    .prologue
    .line 73
    iput-short p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    .line 74
    return-void
.end method

.method public a([B)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    .line 98
    return-void
.end method

.method public b(S)V
    .registers 2

    .prologue
    .line 89
    iput-short p1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    .line 90
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 52
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()S
    .registers 2

    .prologue
    .line 69
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->e:I

    return v0
.end method

.method public h()S
    .registers 2

    .prologue
    .line 85
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    return v0
.end method

.method public i()[B
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->n:[B

    return-object v0
.end method

.method public j()S
    .registers 2

    .prologue
    .line 101
    iget-short v0, p0, Lcom/tencent/android/tpush/service/channel/b/i;->m:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "(p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->k:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->l:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/i;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->h:S

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/android/tpush/service/channel/b/i;->m:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/i;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
