.class public final enum Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
.super Ljava/lang/Enum;
.source "LoginShareStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field public static final enum DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field public static final enum SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static final synthetic b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "DISABLED"

    const-string v2, "disabled"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 13
    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "SILENT"

    const-string v2, "silent"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 17
    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "CHOICE"

    const-string v2, "choice"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "strValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public static mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 6
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 21
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v3

    .line 28
    :cond_a
    :goto_a
    return-object v3

    .line 23
    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->values()[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    .local v0, "arr$":[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_11
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    .line 24
    .local v3, "value":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 28
    .end local v3    # "value":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    :cond_22
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v3

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 2

    .prologue
    .line 5
    const-class v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method


# virtual methods
.method public getStrValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->a:Ljava/lang/String;

    return-object v0
.end method
