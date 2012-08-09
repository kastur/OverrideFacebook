.class public Lcom/facebook/katana/settings/RolloutSetting;
.super Ljava/lang/Object;
.source "RolloutSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/settings/RolloutSetting",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/katana/settings/RolloutSetting$1;

    invoke-direct {v0}, Lcom/facebook/katana/settings/RolloutSetting$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/settings/RolloutSetting;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/katana/settings/RolloutSetting;->b:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/katana/settings/RolloutSetting;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Experiment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "Select a condition"

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/facebook/katana/settings/RolloutSetting;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    .line 41
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/facebook/katana/settings/RolloutSetting;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/facebook/katana/settings/RolloutSetting;->b:Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/facebook/katana/rollout/Rollout;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50
    :goto_1
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/facebook/katana/settings/RolloutSetting;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/settings/RolloutSetting;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/facebook/katana/settings/RolloutSetting;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v0, Lcom/facebook/katana/settings/RolloutSetting$2;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/katana/settings/RolloutSetting$2;-><init>(Lcom/facebook/katana/settings/RolloutSetting;Landroid/preference/ListPreference;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    return-object v3

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method protected final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/settings/RolloutSetting;->b:Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/facebook/katana/rollout/Rollout;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
