.class public final enum Lcom/alipay/sdk/app/ResultStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/sdk/app/ResultStatus;

.field public static final enum b:Lcom/alipay/sdk/app/ResultStatus;

.field public static final enum c:Lcom/alipay/sdk/app/ResultStatus;

.field public static final enum d:Lcom/alipay/sdk/app/ResultStatus;

.field public static final enum e:Lcom/alipay/sdk/app/ResultStatus;

.field public static final enum f:Lcom/alipay/sdk/app/ResultStatus;

.field private static final synthetic i:[Lcom/alipay/sdk/app/ResultStatus;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "SUCCEEDED"

    const/16 v2, 0x2328

    const-string v3, "\u5904\u7406\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->a:Lcom/alipay/sdk/app/ResultStatus;

    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "FAILED"

    const/16 v2, 0xfa0

    const-string v3, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "CANCELED"

    const/16 v2, 0x1771

    const-string v3, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x1772

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    .line 5
    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "PARAMS_ERROR"

    const/16 v2, 0xfa1

    const-string v3, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->e:Lcom/alipay/sdk/app/ResultStatus;

    new-instance v0, Lcom/alipay/sdk/app/ResultStatus;

    const-string v1, "PAY_WAITTING"

    const/4 v2, 0x5

    const/16 v3, 0x1f40

    const-string v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/app/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->f:Lcom/alipay/sdk/app/ResultStatus;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/sdk/app/ResultStatus;

    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->a:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->e:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/sdk/app/ResultStatus;->f:Lcom/alipay/sdk/app/ResultStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/sdk/app/ResultStatus;->i:[Lcom/alipay/sdk/app/ResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/alipay/sdk/app/ResultStatus;->g:I

    .line 14
    iput-object p4, p0, Lcom/alipay/sdk/app/ResultStatus;->h:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(I)Lcom/alipay/sdk/app/ResultStatus;
    .registers 2

    .prologue
    .line 34
    sparse-switch p0, :sswitch_data_16

    .line 46
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    :goto_5
    return-object v0

    .line 36
    :sswitch_6
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->a:Lcom/alipay/sdk/app/ResultStatus;

    goto :goto_5

    .line 38
    :sswitch_9
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    goto :goto_5

    .line 40
    :sswitch_c
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    goto :goto_5

    .line 42
    :sswitch_f
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->e:Lcom/alipay/sdk/app/ResultStatus;

    goto :goto_5

    .line 44
    :sswitch_12
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->f:Lcom/alipay/sdk/app/ResultStatus;

    goto :goto_5

    .line 34
    nop

    :sswitch_data_16
    .sparse-switch
        0xfa1 -> :sswitch_f
        0x1771 -> :sswitch_9
        0x1772 -> :sswitch_c
        0x1f40 -> :sswitch_12
        0x2328 -> :sswitch_6
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/sdk/app/ResultStatus;->h:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private b(I)V
    .registers 2

    .prologue
    .line 18
    iput p1, p0, Lcom/alipay/sdk/app/ResultStatus;->g:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/app/ResultStatus;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/ResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/app/ResultStatus;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->i:[Lcom/alipay/sdk/app/ResultStatus;

    invoke-virtual {v0}, [Lcom/alipay/sdk/app/ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/app/ResultStatus;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/sdk/app/ResultStatus;->g:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/sdk/app/ResultStatus;->h:Ljava/lang/String;

    return-object v0
.end method
