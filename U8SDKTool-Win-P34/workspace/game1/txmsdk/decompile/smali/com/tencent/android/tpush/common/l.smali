.class public Lcom/tencent/android/tpush/common/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.RECEIVE_USER_PRESENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/android/tpush/common/l;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p0, :cond_b

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_75

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 45
    if-nez v2, :cond_3e

    .line 46
    new-instance v1, Lcom/tencent/android/tpush/common/PermissionNotFoundException;

    const-string v2, "The required permissions do not found!"

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/common/PermissionNotFoundException;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v2, "TPush"

    const-string v3, "check required permissins exception."

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    throw v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2e

    .line 64
    :catch_2e
    move-exception v1

    .line 65
    const-string v2, "TPush"

    const-string v3, "check required permissins exception."

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const-string v2, "TPush"

    const-string v3, "check required permissins exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_3d
    return v0

    .line 53
    :cond_3e
    :try_start_3e
    sget-object v3, Lcom/tencent/android/tpush/common/l;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_42
    if-ge v1, v4, :cond_75

    aget-object v5, v3, v1

    .line 54
    invoke-static {v2, v5}, Lcom/tencent/android/tpush/common/l;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 55
    new-instance v1, Lcom/tencent/android/tpush/common/PermissionNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The required permission of <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> does not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/common/PermissionNotFoundException;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v2, "TPush"

    const-string v3, "check required permissins exception."

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw v1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_72} :catch_2e

    .line 53
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 69
    :cond_75
    const/4 v0, 0x1

    goto :goto_3d
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 82
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p0, v1

    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 86
    const/4 v0, 0x1

    .line 89
    :cond_e
    return v0

    .line 82
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
