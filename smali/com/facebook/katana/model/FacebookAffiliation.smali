.class public Lcom/facebook/katana/model/FacebookAffiliation;
.super Ljava/lang/Object;
.source "FacebookAffiliation.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/katana/model/FacebookAffiliation;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/KeyValueProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/provider/KeyValueManager;->a:[Ljava/lang/String;

    const-string v3, "key IN(\"is_employee\",\"seen_employee\")"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, "is_employee"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/facebook/katana/model/FacebookAffiliation;->b:Z

    .line 70
    sput-boolean v6, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    .line 65
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 71
    :cond_1
    const-string v3, "seen_employee"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/facebook/katana/model/FacebookAffiliation;->d:Z

    .line 73
    sput-boolean v6, Lcom/facebook/katana/model/FacebookAffiliation;->e:Z

    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_3
    sput-boolean v6, Lcom/facebook/katana/model/FacebookAffiliation;->a:Z

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 86
    const-string v0, "FacebookAffiliation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "employee bit set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sput-boolean p1, Lcom/facebook/katana/model/FacebookAffiliation;->b:Z

    .line 88
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->d:Z

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->d:Z

    .line 90
    sput-boolean v1, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    .line 91
    sput-boolean v1, Lcom/facebook/katana/model/FacebookAffiliation;->e:Z

    .line 93
    const-string v0, "is_employee"

    sget-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "seen_employee"

    sget-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sput-boolean v1, Lcom/facebook/katana/model/FacebookAffiliation;->a:Z

    .line 101
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->a:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "FacebookAffiliation"

    const-string v1, "employee accurate bit cleared"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sput-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    .line 110
    sput-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->f:Z

    .line 111
    const-string v0, "key=\"is_employee\""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->f:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "This beta build is only enabled for employees and authorized users."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->f:Z

    .line 183
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->d:Z

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/facebook/katana/model/FacebookAffiliation;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    sget-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->c:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/facebook/katana/model/FacebookAffiliation;->e:Z

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/facebook/katana/model/FacebookAffiliation;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/facebook/katana/model/FacebookAffiliation;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    return-void
.end method
