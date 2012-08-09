.class public Lcom/facebook/orca/app/OrcaDatabaseManager;
.super Ljava/lang/Object;
.source "OrcaDatabaseManager.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/database/UsersDbSchemaPart;

.field private final d:Lcom/facebook/orca/database/ThreadsDbSchemaPart;

.field private final e:Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

.field private final f:Lcom/facebook/contacts/data/ContactsDbSchemaPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/orca/database/UsersDbSchemaPart;Lcom/facebook/orca/database/ThreadsDbSchemaPart;Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;Lcom/facebook/contacts/data/ContactsDbSchemaPart;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->c:Lcom/facebook/orca/database/UsersDbSchemaPart;

    .line 46
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->d:Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    .line 47
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->e:Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    .line 48
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->f:Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    .line 49
    return-void
.end method

.method private f()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v2, "users_db2"

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->c:Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 129
    invoke-virtual {v0}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    return-object v0
.end method

.method private g()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v2, "threads_db2"

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->d:Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 140
    return-object v0
.end method

.method private h()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v2, "analytics_db2"

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->e:Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 149
    invoke-virtual {v0}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    return-object v0
.end method

.method private i()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v2, "contacts_db2"

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->f:Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 159
    invoke-virtual {v0}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    return-object v0
.end method

.method private j()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "users_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->f()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaDatabaseManager"

    const-string v3, "Possible users database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "users_db2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->f()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "threads_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->g()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaDatabaseManager"

    const-string v3, "Possible threads database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "threads_db2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->g()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    .locals 4

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->j()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    sget-object v1, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaDatabaseManager"

    const-string v3, "Possible prefs database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "prefs_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->j()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->h()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaDatabaseManager"

    const-string v3, "Possible analytics database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "analytics_db2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 108
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->h()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    .locals 4

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->i()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/facebook/orca/app/OrcaDatabaseManager;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaDatabaseManager"

    const-string v3, "Possible contacts database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDatabaseManager;->b:Landroid/content/Context;

    const-string v1, "contacts_db2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 119
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDatabaseManager;->i()Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    move-result-object v0

    goto :goto_0
.end method
