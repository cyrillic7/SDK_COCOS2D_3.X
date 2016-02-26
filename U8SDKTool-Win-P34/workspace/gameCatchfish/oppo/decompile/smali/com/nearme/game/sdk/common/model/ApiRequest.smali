.class public Lcom/nearme/game/sdk/common/model/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38575641ce13016eL


# instance fields
.field public params:[B

.field public requestCode:I

.field public seq:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    if-ne p1, p0, :cond_5

    .line 23
    :cond_4
    :goto_4
    return v0

    .line 19
    :cond_5
    instance-of v2, p1, Lcom/nearme/game/sdk/common/model/ApiRequest;

    if-eqz v2, :cond_53

    .line 20
    check-cast p1, Lcom/nearme/game/sdk/common/model/ApiRequest;

    .line 21
    iget v2, p1, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    iget v3, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    if-ne v2, v3, :cond_1c

    iget-object v3, p1, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    iget-object v4, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    .line 1042
    if-nez v3, :cond_20

    .line 1043
    if-nez v4, :cond_1e

    move v2, v0

    .line 21
    :goto_1a
    if-nez v2, :cond_4

    :cond_1c
    move v0, v1

    goto :goto_4

    :cond_1e
    move v2, v1

    .line 1046
    goto :goto_1a

    .line 1049
    :cond_20
    if-nez v4, :cond_24

    move v2, v1

    .line 1050
    goto :goto_1a

    .line 1052
    :cond_24
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1053
    array-length v6, v3

    move v2, v1

    :goto_2b
    if-ge v2, v6, :cond_39

    aget-byte v7, v3, v2

    .line 1054
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1053
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1056
    :cond_39
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1057
    array-length v6, v4

    move v2, v1

    :goto_40
    if-ge v2, v6, :cond_4e

    aget-byte v7, v4, v2

    .line 1058
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1057
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 1060
    :cond_4e
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1a

    :cond_53
    move v0, v1

    .line 23
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 29
    iget v0, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    add-int/lit16 v2, v0, 0x20f

    .line 30
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    if-eqz v0, :cond_24

    .line 31
    const/16 v1, 0x11

    .line 32
    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1a

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    aget-byte v3, v3, v0

    add-int/2addr v1, v3

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 35
    :cond_1a
    mul-int/lit8 v0, v2, 0x1f

    add-int/2addr v0, v1

    .line 37
    :goto_1d
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 38
    return v0

    :cond_24
    move v0, v2

    goto :goto_1d
.end method
