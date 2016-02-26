.class public final enum Lcom/baidu/sapi2/result/SapiResult$ActionMode;
.super Ljava/lang/Enum;
.source "SapiResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/result/SapiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/result/SapiResult$ActionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MSG:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

.field public static final enum URL:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/result/SapiResult$ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/baidu/sapi2/result/SapiResult$ActionMode;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    new-instance v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    const-string v5, "MSG"

    const-string v6, "msg"

    invoke-direct {v4, v5, v7, v6}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->MSG:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    .line 59
    new-instance v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    const-string v5, "URL"

    const-string v6, "url"

    invoke-direct {v4, v5, v8, v6}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->URL:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    .line 49
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    sget-object v5, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->MSG:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    aput-object v5, v4, v7

    sget-object v5, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->URL:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    aput-object v5, v4, v8

    sput-object v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->c:[Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->a:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->values()[Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    move-result-object v1

    .local v1, "arr$":[Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_32
    if-ge v2, v3, :cond_42

    aget-object v0, v1, v2

    .line 65
    .local v0, "actionMode":Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    sget-object v4, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 67
    .end local v0    # "actionMode":Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    :cond_42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "actionMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->b:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    .registers 2
    .param p0, "actionMode"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    .registers 2

    .prologue
    .line 49
    const-class v0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/result/SapiResult$ActionMode;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->c:[Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/result/SapiResult$ActionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->b:Ljava/lang/String;

    return-object v0
.end method
