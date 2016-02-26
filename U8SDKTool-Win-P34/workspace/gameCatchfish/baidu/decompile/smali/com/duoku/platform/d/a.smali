.class public abstract Lcom/duoku/platform/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteStatement;IJ)V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 39
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    if-eqz p2, :cond_6

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :goto_5
    return-void

    .line 23
    :cond_6
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5
.end method
