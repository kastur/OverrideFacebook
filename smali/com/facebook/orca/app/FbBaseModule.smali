.class public Lcom/facebook/orca/app/FbBaseModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "FbBaseModule.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/inject/ContextScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/FbBaseModule;)Lcom/facebook/orca/inject/ContextScope;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$SystemServiceProvider;

    invoke-direct {v1, p0, p2}, Lcom/facebook/orca/app/FbBaseModule$SystemServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 127
    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;

    invoke-direct {v1, p0, p2}, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 130
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v0, "FbBaseModule.configure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v2, p0, Lcom/facebook/orca/app/FbBaseModule;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 66
    const-class v1, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/FbBaseModule;->b:Lcom/facebook/orca/inject/ContextScope;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 67
    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 70
    const-class v1, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/common/util/SystemClock;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 72
    const-class v1, Lcom/facebook/orca/common/util/SystemClock;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;

    invoke-direct {v2, v3}, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;-><init>(B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 75
    const-class v1, Ljava/util/Random;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/InsecureRandom;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;

    invoke-direct {v2, v3}, Lcom/facebook/orca/app/FbBaseModule$RandomProvider;-><init>(B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 80
    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 81
    const-class v1, Landroid/view/WindowManager;

    const-string v2, "window"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "layout_inflater"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "activity"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 84
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "alarm"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 86
    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 88
    const-class v1, Landroid/app/SearchManager;

    const-string v2, "search"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    const-class v1, Landroid/os/Vibrator;

    const-string v2, "vibrator"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "connectivity"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 91
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "wifi"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "input_method"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 93
    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 94
    const-class v1, Landroid/text/ClipboardManager;

    const-string v2, "clipboard"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 95
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 96
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 101
    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$ActivityProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$ActivityProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 103
    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$ResourcesProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 105
    const-class v1, Landroid/content/ContentResolver;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 107
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 109
    const-class v1, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;

    invoke-direct {v2, v3}, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;-><init>(B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 111
    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 115
    const-class v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 120
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 121
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 122
    return-void
.end method
