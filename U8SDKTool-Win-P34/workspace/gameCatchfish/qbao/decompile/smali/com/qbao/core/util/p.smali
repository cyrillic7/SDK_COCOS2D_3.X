.class public Lcom/qbao/core/util/p;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qbao/core/util/p;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 49
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_6

    .line 57
    :cond_5
    return-object p0

    .line 53
    :cond_6
    if-eqz p1, :cond_33

    const-string v0, "0"

    .line 54
    :goto_a
    const/4 v1, 0x0

    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v2, v0

    :goto_2c
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 53
    :cond_33
    const-string v0, ""

    goto :goto_a

    .line 55
    :cond_36
    aget-object v2, p2, v1

    goto :goto_2c
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 31
    if-eqz p2, :cond_b

    .line 32
    if-eqz p1, :cond_8

    :goto_4
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_7
    :goto_7
    return-void

    .line 32
    :cond_8
    const-string p1, "(null)"

    goto :goto_4

    .line 35
    :cond_b
    sget-boolean v0, Lcom/qbao/core/util/p;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 36
    if-eqz p1, :cond_15

    :goto_11
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_15
    const-string p1, "(null)"

    goto :goto_11
.end method

.method public static log(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    const-string v0, "MiguSDK"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    return-void
.end method
