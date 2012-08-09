.class public Lcom/facebook/orca/app/OrcaDataManager;
.super Ljava/lang/Object;
.source "OrcaDataManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# static fields
.field private static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final c:Lcom/facebook/orca/images/ImageCache;

.field private final d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final e:Lcom/facebook/orca/cache/ThreadsCache;

.field private final f:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final g:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final i:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private final m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final n:Lcom/facebook/orca/location/LocationCache;

.field private final o:Lcom/facebook/orca/location/GeocodingCache;

.field private final p:Lcom/facebook/orca/database/DbMessageCache;

.field private final q:Lcom/facebook/orca/cache/ChatVisibilityCache;

.field private final r:Lcom/facebook/orca/rollout/OrcaRolloutManager;

.field private s:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 274
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v4, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/app/OrcaDataManager;->t:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/UiCounters;Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/server/OrcaServiceQueueManager;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/location/GeocodingCache;Lcom/facebook/orca/database/DbMessageCache;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/rollout/OrcaRolloutManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/auth/OrcaAuthenticationManager;",
            "Lcom/facebook/orca/images/ImageCache;",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Lcom/facebook/orca/cache/ThreadsCache;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache;",
            "Lcom/facebook/orca/database/UsersDatabaseSupplier;",
            "Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/prefs/UiCounters;",
            "Lcom/facebook/orca/contacts/picker/FriendListPickerCache;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
            ">;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/server/OrcaServiceQueueManager;",
            "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
            "Lcom/facebook/orca/location/LocationCache;",
            "Lcom/facebook/orca/location/GeocodingCache;",
            "Lcom/facebook/orca/database/DbMessageCache;",
            "Lcom/facebook/orca/cache/ChatVisibilityCache;",
            "Lcom/facebook/orca/rollout/OrcaRolloutManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 95
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/images/ImageCache;

    .line 96
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 97
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/cache/ThreadsCache;

    .line 98
    iput-object p6, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 99
    iput-object p7, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 100
    iput-object p9, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 102
    iput-object p11, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 104
    iput-object p12, p0, Lcom/facebook/orca/app/OrcaDataManager;->j:Ljavax/inject/Provider;

    .line 105
    iput-object p13, p0, Lcom/facebook/orca/app/OrcaDataManager;->k:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 106
    iput-object p14, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 108
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->n:Lcom/facebook/orca/location/LocationCache;

    .line 109
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->o:Lcom/facebook/orca/location/GeocodingCache;

    .line 110
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->p:Lcom/facebook/orca/database/DbMessageCache;

    .line 111
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->q:Lcom/facebook/orca/cache/ChatVisibilityCache;

    .line 112
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->r:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    .line 113
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    const-string v0, "com.facebook.orca_preferences"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->i()V

    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->c()V

    .line 239
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->h()V

    .line 240
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b()V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c()V

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d()V

    .line 263
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->n:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->b()V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->o:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/GeocodingCache;->a()V

    .line 268
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/app/OrcaDataManager;->t:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/util/Set;)V

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->g()V

    .line 285
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 297
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v2

    .line 302
    if-eqz v2, :cond_0

    .line 303
    const/4 v0, 0x2

    .line 311
    :goto_0
    if-eq v0, v1, :cond_1

    .line 312
    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 316
    :goto_1
    return-void

    .line 306
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->k:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 209
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v2}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->a()V

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c()V

    .line 217
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v2}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->d()V

    .line 218
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->e()V

    .line 221
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v2}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->d()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 222
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v2}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->b()V

    .line 234
    return-void

    :cond_0
    move v2, v1

    .line 221
    goto :goto_0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v1}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->b()V

    throw v0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 116
    const-string v0, "OrcaDataManager.init"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/orca/R$xml;->preferences:I

    invoke-static {v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 119
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/orca/R$xml;->preferences_advanced:I

    invoke-static {v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/orca/R$xml;->preferences_internal:I

    invoke-static {v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 122
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->i()V

    .line 124
    invoke-static {v3}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 130
    if-ge v1, v3, :cond_1

    .line 131
    const-string v1, "orca:OrcaDataManager"

    const-string v2, "Me user version upgrade to version 2"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->g()V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->c()V

    .line 135
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 137
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 141
    if-gtz v1, :cond_2

    .line 144
    const-string v1, "orca:OrcaDataManager"

    const-string v2, "Upgrading prefs to version 1"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 146
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->N:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 147
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->O:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 148
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v6}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 149
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 154
    if-ge v1, v7, :cond_3

    .line 155
    const-string v1, "orca:OrcaDataManager"

    const-string v2, "GK version upgrade to version %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->g()V

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 161
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 162
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->r:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-static {}, Lcom/facebook/orca/rollout/OrcaRolloutManager;->b()I

    move-result v2

    .line 168
    if-ge v1, v2, :cond_4

    .line 169
    const-string v1, "orca:OrcaDataManager"

    const-string v3, "Rollout version upgrade to version %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->g()V

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 173
    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 174
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 177
    :cond_4
    new-instance v1, Lcom/facebook/orca/app/OrcaDataManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/OrcaDataManager$1;-><init>(Lcom/facebook/orca/app/OrcaDataManager;)V

    iput-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 187
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 188
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 189
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 244
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->f()V

    .line 247
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->g()V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache;->b()V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->q:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->c()V

    .line 250
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b()V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->p:Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbMessageCache;->a()V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->b()V

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 257
    return-void
.end method
