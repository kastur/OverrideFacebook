.class public Lcom/facebook/orca/common/names/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/facebook/orca/common/names/ContactLocaleUtils;


# instance fields
.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a:Ljava/lang/String;

    .line 119
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->b:Ljava/lang/String;

    .line 120
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->e:Ljava/util/HashMap;

    .line 126
    new-instance v0, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;)V

    iput-object v0, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->f:Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a(Ljava/util/Locale;)V

    .line 132
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 p1, 0x3

    .line 200
    :cond_0
    return p1
.end method

.method private a(Ljava/lang/Integer;)Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 4
    .parameter

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    sget-object v2, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 162
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->b(Ljava/lang/Integer;)Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/facebook/orca/common/names/ContactLocaleUtils;
    .locals 2

    .prologue
    .line 189
    const-class v1, Lcom/facebook/orca/common/names/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->d:Lcom/facebook/orca/common/names/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;

    invoke-direct {v0}, Lcom/facebook/orca/common/names/ContactLocaleUtils;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->d:Lcom/facebook/orca/common/names/ContactLocaleUtils;

    .line 192
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->d:Lcom/facebook/orca/common/names/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/Locale;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->g:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Integer;)Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 3
    .parameter

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 169
    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 171
    new-instance v0, Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/facebook/orca/common/names/ContactLocaleUtils;B)V

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/names/ContactLocaleUtils;->f:Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a(Ljava/lang/Integer;)Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/names/ContactLocaleUtils$ContactLocaleUtilsBase;->a(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
