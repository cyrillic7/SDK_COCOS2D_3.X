.class public Lcom/tencent/msdk/tools/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field public static final MPROXYTYPE_3GNET:I = 0xb

.field public static final MPROXYTYPE_3GWAP:I = 0xa

.field public static final MPROXYTYPE_CMNET:I = 0x1

.field public static final MPROXYTYPE_CMWAP:I = 0x2

.field public static final MPROXYTYPE_CTNET:I = 0x8

.field public static final MPROXYTYPE_CTWAP:I = 0x9

.field public static final MPROXYTYPE_DEFAULT:I = 0x0

.field public static final MPROXYTYPE_NET:I = 0x6

.field public static final MPROXYTYPE_UNINET:I = 0x4

.field public static final MPROXYTYPE_UNIWAP:I = 0x5

.field public static final MPROXYTYPE_WAP:I = 0x7

.field public static final MPROXYTYPE_WIFI:I = 0x3

.field private static PREFERRED_APN_URI:Landroid/net/Uri;


# instance fields
.field clz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/os/Build;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Landroid/os/Build;

    iput-object v0, p0, Lcom/tencent/msdk/tools/DeviceUtils;->clz:Ljava/lang/Class;

    return-void
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :goto_1a
    return-object v2

    .line 141
    :cond_1b
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "strResult":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 143
    goto :goto_1a
.end method

.method public static getBrand()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 12
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 68
    if-nez p0, :cond_8

    .line 124
    :cond_7
    :goto_7
    return v6

    .line 72
    :cond_8
    :try_start_8
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_7

    .line 79
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "typeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "typeName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 83
    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 84
    const/4 v6, 0x3

    goto :goto_7

    .line 86
    :cond_42
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "extraInfo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extraInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    const-string v9, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 91
    const/4 v6, 0x2

    goto :goto_7

    .line 92
    :cond_6c
    const-string v9, "cmnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7c

    const-string v9, "epc.tmobile.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 94
    :cond_7c
    const/4 v6, 0x1

    goto :goto_7

    .line 95
    :cond_7e
    const-string v9, "uniwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 96
    const/4 v6, 0x5

    goto :goto_7

    .line 97
    :cond_88
    const-string v9, "uninet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 98
    const/4 v6, 0x4

    goto/16 :goto_7

    .line 99
    :cond_93
    const-string v9, "wap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 100
    const/4 v6, 0x7

    goto/16 :goto_7

    .line 101
    :cond_9e
    const-string v9, "net"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 102
    const/4 v6, 0x6

    goto/16 :goto_7

    .line 103
    :cond_a9
    const-string v9, "ctwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    move v6, v7

    .line 104
    goto/16 :goto_7

    .line 105
    :cond_b4
    const-string v9, "ctnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bf

    move v6, v8

    .line 106
    goto/16 :goto_7

    .line 107
    :cond_bf
    const-string v9, "3gwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 108
    const/16 v6, 0xa

    goto/16 :goto_7

    .line 109
    :cond_cb
    const-string v9, "3gnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 110
    const/16 v6, 0xb

    goto/16 :goto_7

    .line 112
    :cond_d7
    const-string v9, "#777"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 113
    invoke-static {p0}, Lcom/tencent/msdk/tools/DeviceUtils;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "proxy":Ljava/lang/String;
    if-eqz v4, :cond_ee

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e8} :catch_f1

    move-result v6

    if-lez v6, :cond_ee

    move v6, v7

    .line 115
    goto/16 :goto_7

    :cond_ee
    move v6, v8

    .line 117
    goto/16 :goto_7

    .line 121
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "proxy":Ljava/lang/String;
    .end local v5    # "typeName":Ljava/lang/String;
    :catch_f1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7
.end method

.method public static getScreenResolution(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 59
    if-nez p0, :cond_5

    .line 60
    const-string v1, ""

    .line 64
    :goto_4
    return-object v1

    .line 62
    :cond_5
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public static getVersionRelease()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
