#ifdef __INTELLISENSE__

// ---------- �`���[�g�C�x���g�� ----------
typedef enum ENUM_CHART_EVENT
{
  CHARTEVENT_KEYDOWN = 1,             // �L�[����
  CHARTEVENT_MOUSE_MOVE = 2,          // �}�E�X�ړ��܂��̓}�E�X�N���b�N
  CHARTEVENT_OBJECT_CREATE = 3,       // �O���t�B�J���I�u�W�F�N�g���쐬
  CHARTEVENT_OBJECT_CHANGE = 4,       // �O���t�B�J���I�u�W�F�N�g�̃v���p�e�B�ύX
  CHARTEVENT_OBJECT_DELETE = 5,       // �O���t�B�J���I�u�W�F�N�g���폜
  CHARTEVENT_CLICK = 6,               // �`���[�g���N���b�N
  CHARTEVENT_OBJECT_CLICK = 7,        // �O���t�B�J���I�u�W�F�N�g���N���b�N
  CHARTEVENT_OBJECT_DRAG = 8,         // �O���t�B�J���I�u�W�F�N�g���ړ�
  CHARTEVENT_OBJECT_ENDEDIT = 9,      // LabelEdit�e�L�X�g�ҏW����
  CHARTEVENT_CHART_CHANGE = 10,       // �`���[�g�T�C�Y��v���p�e�B�ύX
  CHARTEVENT_CUSTOM = 11,             // �J�X�^���C�x���g�̍ŏ�
  CHARTEVENT_CUSTOM_LAST = 63         // �J�X�^���C�x���g�̍Ō�
} ENUM_CHART_EVENT;

// ---------- ���ԑ��� ----------
typedef enum ENUM_TIMEFRAMES
{
  PERIOD_CURRENT = 0,   // ���݃`���[�g�̎��Ԏ�
  PERIOD_M1      = 1,   // 1��
  PERIOD_M5      = 5,   // 5��
  PERIOD_M15     = 15,  // 15��
  PERIOD_M30     = 30,  // 30��
  PERIOD_H1      = 60,  // 1����
  PERIOD_H4      = 240, // 4����
  PERIOD_D1      = 1440,// 1��
  PERIOD_W1      = 10080,// 1�T��
  PERIOD_MN1     = 43200 // 1����
} ENUM_TIMEFRAMES;

// ---------- �`���[�g�v���p�e�B�i�����^�j ----------
typedef enum ENUM_CHART_PROPERTY_INTEGER
{
  CHART_IS_OBJECT = 0,                // OBJ_CHART�I�u�W�F�N�g�����ʂ���
  CHART_BRING_TO_TOP = 1,             // �`���[�g�E�C���h�E���őO�ʂɕ\��
  CHART_MOUSE_SCROLL = 2,             // �}�E�X�ɂ�鐅���X�N���[����
  CHART_EVENT_MOUSE_MOVE = 3,         // �}�E�X����C�x���g�ʒm
  CHART_EVENT_OBJECT_CREATE = 4,      // �I�u�W�F�N�g�쐬�C�x���g�ʒm
  CHART_EVENT_OBJECT_DELETE = 5,      // �I�u�W�F�N�g�폜�C�x���g�ʒm
  CHART_MODE = 6,                     // �`���[�g�̎��
  CHART_FOREGROUND = 7,               // ���i�`���[�g���őO�ʂɕ\��
  CHART_SHIFT = 8,                     // �`���[�g�V�t�g
  CHART_AUTOSCROLL = 9,               // �`���[�g�����X�N���[��
  CHART_SCALE = 10,                    // �X�P�[���Y�[��
  CHART_SCALEFIX = 11,                 // �X�P�[���Œ�
  CHART_SCALEFIX_11 = 12,              // �X�P�[��1��1�Œ�
  CHART_SCALE_PT_PER_BAR = 13,         // �X�P�[���Œ�(pips/bar)
  CHART_SHOW_ONE_CLICK = 14,           // �����N���b�N�g���[�h�p�l���\��
  CHART_SHOW_OHLC = 15,                // OHLC�\��
  CHART_SHOW_BID_LINE = 16,            // ���l���C���\��
  CHART_SHOW_ASK_LINE = 17,            // ���l���C���\��
  CHART_SHOW_LAST_LINE = 18,           // �Ō�̉��i���C���\��
  CHART_SHOW_PERIOD_SEP = 19,          // ���ԋ�؂�c���\��
  CHART_SHOW_GRID = 20,                // �`���[�g�O���b�h�\��
  CHART_SHOW_VOLUMES = 21,             // �o�����\��
  CHART_SHOW_OBJECT_DESCR = 22,        // �I�u�W�F�N�g�����\��
  CHART_VISIBLE_BARS = 23,             // �\���\�o�[��
  CHART_WINDOWS_TOTAL = 24,            // �E�C���h�E��
  CHART_WINDOW_IS_VISIBLE = 25,        // �T�u�E�C���h�E��
  CHART_WINDOW_HANDLE = 26,            // �E�C���h�E�n���h��
  CHART_WINDOW_YDISTANCE = 27,         // �T�u�E�C���h�E�㕔�t���[������
  CHART_FIRST_VISIBLE_BAR = 28,        // �ŏ��Ɍ�����o�[
  CHART_WIDTH_IN_BARS = 29,            // �E�C���h�E��(�o�[��)
  CHART_WIDTH_IN_PIXELS = 30,          // �E�C���h�E��(�s�N�Z��)
  CHART_HEIGHT_IN_PIXELS = 31,         // �E�C���h�E����(�s�N�Z��)
  CHART_COLOR_BACKGROUND = 32,         // �w�i�F
  CHART_COLOR_FOREGROUND = 33,         // �O�i�F(�X�P�[���E�t���[��)
  CHART_COLOR_GRID = 34,               // �O���b�h�F
  CHART_COLOR_VOLUME = 35,             // �o�����F
  CHART_COLOR_CHART_UP = 36,           // �㏸�o�[�F
  CHART_COLOR_CHART_DOWN = 37,         // �����o�[�F
  CHART_COLOR_CHART_LINE = 38,         // ���C���`���[�g�F
  CHART_COLOR_CANDLE_BULL = 39,        // ���[�\�N���㏸�F
  CHART_COLOR_CANDLE_BEAR = 40,        // ���[�\�N�������F
  CHART_COLOR_BID = 41,                // ���l���C���F
  CHART_COLOR_ASK = 42,                // ���l���C���F
  CHART_COLOR_LAST = 43,               // �Ō�̉��i���C���F
  CHART_COLOR_STOP_LEVEL = 44,         // �X�g�b�v���x���F
  CHART_SHOW_TRADE_LEVELS = 45,        // �g���[�h���x���\��
  CHART_DRAG_TRADE_LEVELS = 46,        // �g���[�h���x���h���b�O���[�h
  CHART_SHOW_DATE_SCALE = 47,          // �����X�P�[���\��
  CHART_SHOW_PRICE_SCALE = 48,         // ���i�X�P�[���\��
  CHART_IS_OFFLINE = 49                // �I�t���C���`���[�g
} ENUM_CHART_PROPERTY_INTEGER;

// ---------- �`���[�g�v���p�e�B�i�{���x�^�j ----------
typedef enum ENUM_CHART_PROPERTY_DOUBLE
{
  CHART_SHIFT_SIZE = 0,         // �`���[�g�V�t�g�̃T�C�Y(�E�[�̃C���f���g)
  CHART_FIXED_POSITION = 1,     // �`���[�g�Œ�ʒu(�p�[�Z���g�P��)
  CHART_FIXED_MAX = 2,          // �X�P�[���Œ�̏���l
  CHART_FIXED_MIN = 3,          // �X�P�[���Œ�̉����l
  CHART_POINTS_PER_BAR = 4,     // �X�P�[���Œ�ݒ�l(pips/bar)
  CHART_PRICE_MIN = 5,          // �`���[�g�̍ŏ����[�g(�\���l)
  CHART_PRICE_MAX = 6           // �`���[�g�̍ő僌�[�g(�\���l)
} ENUM_CHART_PROPERTY_DOUBLE;


// ---------- �`���[�g�v���p�e�B�i������^�j ----------
typedef enum ENUM_CHART_PROPERTY_STRING
{
  CHART_COMMENT = 0 // �`���[�g�R�����g
} ENUM_CHART_PROPERTY_STRING;

// ---------- �`���[�g�ʒu�� ----------
typedef enum ENUM_CHART_POSITION
{
  CHART_BEGIN = 0,       // �`���[�g�̐擪(�ł��Â����i)
  CHART_CURRENT_POS = 1, // ���݂̈ʒu
  CHART_END = 2          // �`���[�g�̍Ō�(�ł��V�������i)
} ENUM_CHART_POSITION;

// ---------- �I�u�W�F�N�g�� ----------
typedef enum ENUM_OBJECT
{
  OBJ_VLINE = 0,                // ������
  OBJ_HLINE = 1,                // ������
  OBJ_TREND = 2,                // �g�����h���C��
  OBJ_TRENDBYANGLE = 3,         // �p�x�ɂ��g�����h���C��
  OBJ_CYCLES = 4,               // �T�C�N�����C��
  OBJ_CHANNEL = 5,              // �������`���l��
  OBJ_STDDEVCHANNEL = 6,        // �W���΍��`���l��
  OBJ_REGRESSION = 7,           // ���`��A
  OBJ_PITCHFORK = 8,            // �A���h�����[�Y�E�s�b�`�t�H�[�N
  OBJ_GANNLINE = 9,             // �M�������C��
  OBJ_GANNFAN = 10,             // �M�����t�@��
  OBJ_GANNGRID = 11,            // �M�����O���b�h
  OBJ_FIBO = 12,                // �t�B�{�i�b�`���g���[�X�����g
  OBJ_FIBOTIMES = 13,           // �t�B�{�i�b�`�^�C���]�[��
  OBJ_FIBOFAN = 14,             // �t�B�{�i�b�`�t�@��
  OBJ_FIBOARC = 15,             // �t�B�{�i�b�`�A�[�N
  OBJ_FIBOCHANNEL = 16,         // �t�B�{�i�b�`�`���l��
  OBJ_EXPANSION = 17,           // �t�B�{�i�b�`�G�N�X�p���V����
  OBJ_RECTANGLE = 18,           // �����`
  OBJ_TRIANGLE = 19,            // �O�p�`
  OBJ_ELLIPSE = 20,             // �ȉ~
  OBJ_ARROW_THUMB_UP = 21,      // �T���Y�E�A�b�v
  OBJ_ARROW_THUMB_DOWN = 22,    // �T���Y�E�_�E��
  OBJ_ARROW_UP = 23,            // ��������
  OBJ_ARROW_DOWN = 24,          // ���������
  OBJ_ARROW_STOP = 25,          // �X�g�b�v�T�C��
  OBJ_ARROW_CHECK = 26,         // �`�F�b�N�T�C��
  OBJ_ARROW_LEFT_PRICE = 27,    // ���i���x��(���ɕ\��)
  OBJ_ARROW_RIGHT_PRICE = 28,   // ���i���x��(�E�ɕ\��)
  OBJ_ARROW_BUY = 29,           // �����T�C��(MT4�ł͖��g�p)
  OBJ_ARROW_SELL = 30,          // ����T�C��(MT4�ł͖��g�p)
  OBJ_ARROW = 31,               // ���
  OBJ_TEXT = 32,                // �e�L�X�g
  OBJ_LABEL = 33,               // ���x��
  OBJ_BUTTON = 34,              // �{�^��
  OBJ_BITMAP = 35,              // �r�b�g�}�b�v
  OBJ_BITMAP_LABEL = 36,        // �r�b�g�}�b�v���x��
  OBJ_EDIT = 37,                // �G�f�B�b�g
  OBJ_EVENT = 38,               // �C�x���g(�o�σJ�����_�[�Ή�)
  OBJ_RECTANGLE_LABEL = 39      // �J�X�^��GUI�p���x���I�u�W�F�N�g
} ENUM_OBJECT;

// ---------- �I�u�W�F�N�g�v���p�e�B�i�����^�j ----------
typedef enum ENUM_OBJECT_PROPERTY_INTEGER
{
  OBJPROP_COLOR = 0,           // �F
  OBJPROP_STYLE = 1,           // ���X�^�C��
  OBJPROP_WIDTH = 2,           // ���̕�
  OBJPROP_BACK = 3,            // �I�u�W�F�N�g�̔w�i�\��
  OBJPROP_ZORDER = 4,          // �I�u�W�F�N�g�D�揇��
  OBJPROP_FILL = 5,            // �I�u�W�F�N�g�̓h��Ԃ�
  OBJPROP_HIDDEN = 6,          // �I�u�W�F�N�g��\���ݒ�
  OBJPROP_SELECTED = 7,        // �I�u�W�F�N�g�I��
  OBJPROP_READONLY = 8,        // OBJ_EDIT�̃e�L�X�g�ҏW��
  OBJPROP_TYPE = 9,            // �I�u�W�F�N�g�^�C�v
  OBJPROP_TIME = 10,           // ���ԍ��W
  OBJPROP_SELECTABLE = 11,     // �I�u�W�F�N�g�p��
  OBJPROP_CREATETIME = 12,     // �I�u�W�F�N�g�쐬����
  OBJPROP_LEVELS = 13,         // ���x���ԍ�
  OBJPROP_LEVELCOLOR = 14,     // ���C�����x���̐F
  OBJPROP_LEVELSTYLE = 15,     // ���C�����x���̃X�^�C��
  OBJPROP_LEVELWIDTH = 16,     // ���C�����x���̕�
  OBJPROP_ALIGN = 17,          // OBJ_EDIT�̃e�L�X�g�A���C�����g
  OBJPROP_FONTSIZE = 18,       // �t�H���g�T�C�Y
  OBJPROP_RAY_RIGHT = 19,      // ���̉���(�E)
  OBJPROP_ELLIPSE = 20,        // �t�B�{�i�b�`�A�[�N�̑ȉ~�����S�\��
  OBJPROP_ARROWCODE = 21,      // �A���[�R�[�h
  OBJPROP_TIMEFRAMES = 22,     // ���Ԏ��ł̉���
  OBJPROP_ANCHOR = 23,         // �A���J�[�|�C���g
  OBJPROP_XDISTANCE = 24,      // X������(pixel)
  OBJPROP_YDISTANCE = 25,      // Y������(pixel)
  OBJPROP_DRAWLINES = 26,      // �G���I�b�g�g���p���\��
  OBJPROP_STATE = 27,          // �{�^���������
  OBJPROP_XSIZE = 28,          // ��(x������)
  OBJPROP_YSIZE = 29,          // ����(y������)
  OBJPROP_XOFFSET = 30,        // X���W(�r�b�g�}�b�v)
  OBJPROP_YOFFSET = 31,        // Y���W(�r�b�g�}�b�v)
  OBJPROP_BGCOLOR = 32,        // �w�i�F
  OBJPROP_CORNER = 33,         // �`���[�g�R�[�i�[�Ƀ����N
  OBJPROP_BORDER_TYPE = 34,    // �g���^�C�v
  OBJPROP_BORDER_COLOR = 35    // �g���F
} ENUM_OBJECT_PROPERTY_INTEGER;

// ---------- �I�u�W�F�N�g�v���p�e�B�i�{���x�^�j ----------
typedef enum ENUM_OBJECT_PROPERTY_DOUBLE
{
  OBJPROP_PRICE = 0,       // ���i���W
  OBJPROP_LEVELVALUE = 1,  // ���x���l
  OBJPROP_SCALE = 2,       // �X�P�[��(�M�����E�t�B�{�i�b�`�A�[�N�p)
  OBJPROP_ANGLE = 3,       // �p�x(���w��̏ꍇ��EMPTY_VALUE)
  OBJPROP_DEVIATION = 4    // �W���΍��`���l���p�̕΍�
} ENUM_OBJECT_PROPERTY_DOUBLE;

// ---------- �I�u�W�F�N�g�v���p�e�B�i������^�j ----------
typedef enum ENUM_OBJECT_PROPERTY_STRING
{
  OBJPROP_NAME = 0,       // �I�u�W�F�N�g��
  OBJPROP_TEXT = 1,       // �I�u�W�F�N�g�̐���
  OBJPROP_TOOLTIP = 2,    // �c�[���`�b�v�e�L�X�g
  OBJPROP_LEVELTEXT = 3,  // ���x������
  OBJPROP_FONT = 4,       // �t�H���g
  OBJPROP_BMPFILE = 5     // �r�b�g�}�b�v���x���pBMP�t�@�C����
} ENUM_OBJECT_PROPERTY_STRING;

// ---------- �e�L�X�g���񃂁[�h ----------
typedef enum ENUM_ALIGN_MODE
{
  ALIGN_LEFT = 0,    // ������
  ALIGN_CENTER = 1,  // ��������(OBJ_EDIT�̂�)
  ALIGN_RIGHT = 2    // �E����
} ENUM_ALIGN_MODE;

// ---------- �A���J�[�|�C���g ----------
typedef enum ENUM_ANCHOR_POINT
{
  ANCHOR_LEFT_UPPER = 0,   // ����̃A���J�[�|�C���g
  ANCHOR_LEFT = 1,         // �������̃A���J�[�|�C���g
  ANCHOR_LEFT_LOWER = 2,   // �����̃A���J�[�|�C���g
  ANCHOR_LOWER = 3,        // �������̃A���J�[�|�C���g
  ANCHOR_RIGHT_LOWER = 4,  // �E���̃A���J�[�|�C���g
  ANCHOR_RIGHT = 5,        // �����E�̃A���J�[�|�C���g
  ANCHOR_RIGHT_UPPER = 6,  // �E��̃A���J�[�|�C���g
  ANCHOR_UPPER = 7,        // ������̃A���J�[�|�C���g
  ANCHOR_CENTER = 8        // �I�u�W�F�N�g���S�̃A���J�[�|�C���g
} ENUM_ANCHOR_POINT;

// ---------- ��R�[�i�[ ----------
typedef enum ENUM_BASE_CORNER
{
  CORNER_LEFT_UPPER = 0,   // �`���[�g�̍�������W�̒��S�ɂ���
  CORNER_LEFT_LOWER = 1,   // �`���[�g�̍��������W�̒��S�ɂ���
  CORNER_RIGHT_LOWER = 2,  // �`���[�g�̉E�������W�̒��S�ɂ���
  CORNER_RIGHT_UPPER = 3   // �`���[�g�̉E������W�̒��S�ɂ���
} ENUM_BASE_CORNER;

// ---------- ���X�^�C�� ----------
typedef enum ENUM_LINE_STYLE
{
    STYLE_SOLID      = 0,  // ����
    STYLE_DASH       = 1,  // �j��
    STYLE_DOT        = 2,  // �_��
    STYLE_DASHDOT    = 3,  // �j���Ɠ_��
    STYLE_DASHDOTDOT = 4   // �j����2�d�_��
} ENUM_LINE_STYLE;

// ---------- �N���C�A���g�^�[�~�i���v���p�e�B ----------
typedef enum ENUM_TERMINAL_INFO_INTEGER
{
    TERMINAL_BUILD = 0,                     // �N���C�A���g�^�[�~�i���̃r���h�o�[�W���� (int)
    TERMINAL_COMMUNITY_ACCOUNT = 1,         // MQL5�R�~���j�e�B�A�J�E���g (bool)
    TERMINAL_COMMUNITY_CONNECTION = 2,      // MQL5�R�~���j�e�B�ڑ� (bool)
    TERMINAL_CONNECTED = 3,                 // �g���[�h�T�[�o�[�ւ̐ڑ� (bool)
    TERMINAL_DLLS_ALLOWED = 4,              // DLL�g�p���� (bool)
    TERMINAL_TRADE_ALLOWED = 5,             // �g���[�h���� (bool)
    TERMINAL_EMAIL_ENABLED = 6,             // �^�[�~�i���Ŏw�肵��e-mail���M���� (bool)
    TERMINAL_FTP_ENABLED = 7,               // �^�[�~�i���Ŏw�肵��FTP�T�[�o�[���M���� (bool)
    TERMINAL_NOTIFICATIONS_ENABLED = 8,     // �X�}�[�g�t�H���ւ̒ʒm���� (bool)
    TERMINAL_MAXBARS = 9,                   // �`���[�g��ł̃o�[����� (int)
    TERMINAL_MQID = 10,                     // MetaQuotes�T�[�r�X����̃v�b�V���ʒm���� (bool)
    TERMINAL_CODEPAGE = 11,                 // �N���C�A���g�^�[�~�i���̃R�[�h�y�[�W�� (int)
    TERMINAL_CPU_CORES = 12,                // CPU�R�A�̐� (int)
    TERMINAL_DISK_SPACE = 13,               // �^�[�~�i���C���X�g�[���h���C�u�̋󂫗e��(MB) (int)
    TERMINAL_MEMORY_PHYSICAL = 14,          // �����������e��(MB) (int)
    TERMINAL_MEMORY_TOTAL = 15,             // �g�p�\�ȃ�����(MB) (int)
    TERMINAL_MEMORY_AVAILABLE = 16,         // �󂫃�����(MB) (int)
    TERMINAL_MEMORY_USED = 17,              // �g�p������(MB) (int)
    TERMINAL_SCREEN_DPI = 18,               // �f�B�X�v���C�𑜓x(DPI) (int)
    TERMINAL_PING_LAST = 19                 // �g���[�h�T�[�o�[�ւ̍Ō��ping�l (int)
} ENUM_TERMINAL_INFO_INTEGER;

// ---------- �I�u�W�F�N�g�|�C���^�`�F�b�N ----------
typedef enum ENUM_POINTER_TYPE
{
   POINTER_INVALID   = 0,   // �s���ȃ|�C���^
   POINTER_DYNAMIC   = 1,   // new() ���Z�q�ō쐬���ꂽ�I�u�W�F�N�g�|�C���^
   POINTER_AUTOMATIC = 2    // �����I�ɍ쐬���ꂽ�I�u�W�F�N�g�|�C���^
} ENUM_POINTER_TYPE;

// ---------- �t�@�C���v���p�e�B ----------
typedef enum ENUM_FILE_PROPERTY_INTEGER
{
   FILE_EXISTS       = 0,   // �t�@�C���L���`�F�b�N
   FILE_CREATE_DATE  = 1,   // �쐬��
   FILE_MODIFY_DATE  = 2,   // �ŏI�X�V��
   FILE_ACCESS_DATE  = 3,   // �ŏI�A�N�Z�X��
   FILE_SIZE         = 4,   // �t�@�C���T�C�Y (�o�C�g�P��)
   FILE_POSITION     = 5,   // �t�@�C���̃|�C���^�ʒu
   FILE_END          = 6,   // �t�@�C���̏I���L�����擾
   FILE_LINE_END     = 7,   // �s�̏I���L�����擾
   FILE_IS_COMMON    = 8,   // �t�@�C���͋��L�t�H���_�ŊJ����Ă��� (FILE_COMMON�Q��)
   FILE_IS_TEXT      = 9,   // �t�@�C���̓e�L�X�g�t�@�C���Ƃ��ĊJ����Ă��� (FILE_TXT�Q��)
   FILE_IS_BINARY    = 10,  // �t�@�C���̓o�C�i���t�@�C���Ƃ��ĊJ����Ă��� (FILE_BIN�Q��)
   FILE_IS_CSV       = 11,  // �t�@�C����CSV�Ƃ��ĊJ����Ă��� (FILE_CSV�Q��)
   FILE_IS_ANSI      = 12,  // �t�@�C����ANSI�Ƃ��ĊJ����Ă��� (FILE_ANSI�Q��)
   FILE_IS_READABLE  = 13,  // �J���ꂽ�t�@�C���Ƃ��ēǂݎ��\ (FILE_READ�Q��)
   FILE_IS_WRITABLE  = 14   // �J���ꂽ�t�@�C���Ƃ��ď������݉\ (FILE_WRITE�Q��)
} ENUM_FILE_PROPERTY_INTEGER;

// ---------- �t�@�C���V�[�N�ʒu ----------
typedef enum ENUM_FILE_POSITION
{
   SEEK_SET = 0,   // �t�@�C���̐擪
   SEEK_CUR = 1,   // ���݂̃t�@�C���|�C���^�ʒu
   SEEK_END = 2    // �t�@�C���̍Ō�
} ENUM_FILE_POSITION;

#endif // __INTELLISENSE__