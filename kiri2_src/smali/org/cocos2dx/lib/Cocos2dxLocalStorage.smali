.class public Lorg/cocos2dx/lib/Cocos2dxLocalStorage;
.super Ljava/lang/Object;
.source "Cocos2dxLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;
    }
.end annotation


# static fields
.field private static DATABASE_NAME:Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x1

.field private static TABLE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Cocos2dxLocalStorage"

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "jsb.sqlite"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->DATABASE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "data"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    .line 41
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    .line 42
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->DATABASE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 63
    :cond_0
    return-void
.end method

.method public static getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select value from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where key=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "sql":Ljava/lang/String;
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 79
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "sql":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_0

    const-string v2, ""

    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 81
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v2    # "ret":Ljava/lang/String;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 83
    :try_start_1
    const-string v4, "Cocos2dxLocalStorage"

    const-string v5, "The key contains more than one value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v4, "value"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->DATABASE_NAME:Ljava/lang/String;

    .line 51
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    .line 53
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabaseOpenHelper:Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxLocalStorage$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeItem(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where key=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "replace into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(key,value)values(?,?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
