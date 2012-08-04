.class Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;
.super Ljava/lang/Object;
.source "AddShortcutActivity.java"


# static fields
.field private static a:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;


# instance fields
.field private b:J

.field private c:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v3}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    .line 245
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v3}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    .line 246
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 247
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;
    .locals 1
    .parameter

    .prologue
    .line 250
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    invoke-direct {v0, p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    .line 253
    :cond_0
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->a:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    sub-long/2addr v0, v2

    .line 258
    iget-wide v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    .line 271
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 278
    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->b:J

    .line 279
    iput-wide v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating;->c:J

    .line 280
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method
