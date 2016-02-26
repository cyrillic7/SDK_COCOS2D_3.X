.class public final enum Lcom/alipay/sdk/protocol/MiniStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/sdk/protocol/MiniStatus;

.field public static final enum b:Lcom/alipay/sdk/protocol/MiniStatus;

.field public static final enum c:Lcom/alipay/sdk/protocol/MiniStatus;

.field public static final enum d:Lcom/alipay/sdk/protocol/MiniStatus;

.field private static final synthetic f:[Lcom/alipay/sdk/protocol/MiniStatus;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/alipay/sdk/protocol/MiniStatus;

    const-string v1, "SUCCESS"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/sdk/protocol/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->a:Lcom/alipay/sdk/protocol/MiniStatus;

    .line 18
    new-instance v0, Lcom/alipay/sdk/protocol/MiniStatus;

    const-string v1, "TID_REFRESH"

    const-string v2, "tid_refresh_invalid"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/protocol/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->b:Lcom/alipay/sdk/protocol/MiniStatus;

    .line 21
    new-instance v0, Lcom/alipay/sdk/protocol/MiniStatus;

    const-string v1, "POP_TYPE"

    const-string v2, "pop_type"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/protocol/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->c:Lcom/alipay/sdk/protocol/MiniStatus;

    .line 24
    new-instance v0, Lcom/alipay/sdk/protocol/MiniStatus;

    const-string v1, "NOT_POP_TYPE"

    const-string v2, "not_pop_type"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/sdk/protocol/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->d:Lcom/alipay/sdk/protocol/MiniStatus;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/sdk/protocol/MiniStatus;

    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->a:Lcom/alipay/sdk/protocol/MiniStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->b:Lcom/alipay/sdk/protocol/MiniStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->c:Lcom/alipay/sdk/protocol/MiniStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->d:Lcom/alipay/sdk/protocol/MiniStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->f:[Lcom/alipay/sdk/protocol/MiniStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/alipay/sdk/protocol/MiniStatus;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/MiniStatus;
    .registers 7

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/alipay/sdk/protocol/MiniStatus;->values()[Lcom/alipay/sdk/protocol/MiniStatus;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v4, :cond_19

    aget-object v0, v3, v2

    .line 39
    iget-object v5, v0, Lcom/alipay/sdk/protocol/MiniStatus;->e:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 38
    :goto_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    .line 44
    :cond_19
    return-object v1

    :cond_1a
    move-object v0, v1

    goto :goto_14
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/sdk/protocol/MiniStatus;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/MiniStatus;
    .registers 2

    .prologue
    .line 12
    const-class v0, Lcom/alipay/sdk/protocol/MiniStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/MiniStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/MiniStatus;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/alipay/sdk/protocol/MiniStatus;->f:[Lcom/alipay/sdk/protocol/MiniStatus;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/MiniStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/MiniStatus;

    return-object v0
.end method
