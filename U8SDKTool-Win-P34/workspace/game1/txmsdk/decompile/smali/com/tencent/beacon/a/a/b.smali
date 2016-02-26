.class public final Lcom/tencent/beacon/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p1, :cond_4

    .line 30
    :cond_3
    :goto_3
    return v0

    .line 21
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 24
    instance-of v1, p1, Lcom/tencent/beacon/a/a/b;

    if-eqz v1, :cond_3

    .line 25
    check-cast p1, Lcom/tencent/beacon/a/a/b;

    .line 26
    iget-object v1, p1, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    const/4 v0, 0x1

    goto :goto_3
.end method
