.class public final Lcom/tencent/beacon/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/beacon/e/a;->a:Z

    .line 9
    return-void
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 55
    sget-boolean v0, Lcom/tencent/beacon/e/a;->a:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_e

    .line 56
    if-nez p1, :cond_11

    const-string p1, "null"

    .line 57
    :cond_b
    :goto_b
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_e
    return-void

    .line 55
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 56
    :cond_11
    if-eqz p2, :cond_b

    array-length v0, p2

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/beacon/e/a;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_10

    .line 27
    const-string v0, "beacon"

    if-nez p0, :cond_13

    const-string p0, "null"

    :cond_d
    :goto_d
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_10
    return-void

    .line 26
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 27
    :cond_13
    if-eqz p1, :cond_d

    array-length v1, p1

    if-eqz v1, :cond_d

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 33
    sget-boolean v0, Lcom/tencent/beacon/e/a;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_10

    .line 34
    const-string v0, "beacon"

    if-nez p0, :cond_13

    const-string p0, "null"

    :cond_d
    :goto_d
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_10
    return-void

    .line 33
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 34
    :cond_13
    if-eqz p1, :cond_d

    array-length v1, p1

    if-eqz v1, :cond_d

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 40
    const-string v0, "beacon"

    if-nez p0, :cond_a

    const-string p0, "null"

    :cond_6
    :goto_6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 40
    :cond_a
    if-eqz p1, :cond_6

    array-length v1, p1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 45
    if-nez p0, :cond_a

    const-string p0, "null"

    .line 46
    :cond_4
    :goto_4
    const-string v0, "beacon"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 45
    :cond_a
    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 63
    const-string v0, "beacon_step_api"

    invoke-static {v0, p0, p1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 68
    const-string v0, "beacon_step_buffer"

    invoke-static {v0, p0, p1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 73
    const-string v0, "beacon_step_db"

    invoke-static {v0, p0, p1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 78
    const-string v0, "beacon_step_upload"

    invoke-static {v0, p0, p1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method
