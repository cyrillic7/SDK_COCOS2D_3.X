.class public final enum Lcom/baidu/bdgame/sdk/obf/gi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/gi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/bdgame/sdk/obf/gi;

.field public static final enum b:Lcom/baidu/bdgame/sdk/obf/gi;

.field private static final synthetic c:[Lcom/baidu/bdgame/sdk/obf/gi;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gi;

    const-string v1, "creditCard"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gi;

    const-string v1, "cashCard"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->b:Lcom/baidu/bdgame/sdk/obf/gi;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/bdgame/sdk/obf/gi;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/gi;->b:Lcom/baidu/bdgame/sdk/obf/gi;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->c:[Lcom/baidu/bdgame/sdk/obf/gi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/gi;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gi;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bdgame/sdk/obf/gi;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->c:[Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-virtual {v0}, [Lcom/baidu/bdgame/sdk/obf/gi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bdgame/sdk/obf/gi;

    return-object v0
.end method
