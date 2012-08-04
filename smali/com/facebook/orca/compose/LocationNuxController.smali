.class public Lcom/facebook/orca/compose/LocationNuxController;
.super Ljava/lang/Object;
.source "LocationNuxController.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/UiCounters;

.field private b:Lcom/facebook/orca/compose/LocationNuxView;

.field private c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private d:Lcom/facebook/orca/prefs/UiCounters$Listener;

.field private e:Lcom/facebook/orca/compose/LocationNuxController$State;

.field private f:Z

.field private g:Z

.field private h:Lcom/facebook/orca/compose/ComposeMode;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/UiCounters;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 30
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->h:Lcom/facebook/orca/compose/ComposeMode;

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxController;)Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/compose/LocationNuxController$State;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne p1, v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/LocationNuxView;->a(Z)V

    .line 103
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_4

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/LocationNuxView;->a(Z)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/LocationDisabledNuxView;->a(Z)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/LocationDisabledNuxView;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxController;Lcom/facebook/orca/compose/LocationNuxController$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->h:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 78
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked_with_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "enabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "disabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0

    .line 78
    :cond_2
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked_with_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->h:Lcom/facebook/orca/compose/ComposeMode;

    .line 83
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    .line 84
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 43
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/LocationNuxController$1;-><init>(Lcom/facebook/orca/compose/LocationNuxController;)V

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->d:Lcom/facebook/orca/prefs/UiCounters$Listener;

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxController;->d:Lcom/facebook/orca/prefs/UiCounters$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Lcom/facebook/orca/prefs/UiCounters$Listener;)V

    .line 50
    return-void
.end method

.method public final a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->f:Z

    .line 56
    iput-boolean p2, p0, Lcom/facebook/orca/compose/LocationNuxController;->g:Z

    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    .line 58
    return-void
.end method
